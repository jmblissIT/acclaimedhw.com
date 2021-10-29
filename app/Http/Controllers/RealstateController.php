<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Realstate_locations;
use App\Realstate_coverage_type;
use App\Realstate_property_type;
use App\Realstate_property_type_questions;
use App\Realstate_question_relationships;
use App\Realstate_realationship;
use App\Realstate_coverage;
use App\Realstate_features;
use App\Realstate_features_relationship;
use App\Realstate_products;
use App\RealstateFeaturesTitle;
use App\RealstateFeatures;
use App\Helpers\ApiHelpers;
use Validator;
use DB;



class RealstateController extends Controller
{
	public function getStates() {
		$states = Realstate_locations::get();
		return response()->json($states,200);
	}


	public function getCovType() {
		$covtype = Realstate_coverage_type::get();
		return response()->json([
				"result" => true,
				"questions" => $covtype,
		], 201);
	}
	public function getUserTypes() {
		$user_types= DB::select('select * from real_user_types');
		return response()->json([
				"result" => true,
				"user_types" => $user_types,
		], 201);
	}
    public function getQuestions( Request $request ) {
		$requestdata = (object)$request->json()->all();
		$rules = array(
			'state_id' => 'required|numeric',
			'cov_type_id' => 'required|numeric',
		);
		$validator = Validator::make($request->all(),$rules);
		if($validator->fails()){
			return response()->json([
				"result" => false,
				"message" => $validator->errors()->first(),
			], 422);
		} 
		else {

			$where="rr.location_id=".$requestdata->state_id." and rr.coverage_type_id=".$requestdata->cov_type_id;

			if(isset($requestdata->property_type) && !empty($requestdata->property_type)){
				$where.=" and rr.question_type_id=".$requestdata->property_type;
			}

			DB::enableQueryLog();

			$property_types= DB::select('select rpt.id,rpt.question_name from realstate_relationships rr INNER JOIN realstate_property_type rpt ON rr.question_type_id=rpt.id where '.$where);
	
			$query = DB::getQueryLog();
			$lastQuery = end($query);
			
			//echo $lastQuery['query'];
			//die;

			// echo '<pre>';
			// print_r($property_types);
			// die;



			if( !empty( $property_types ) ){
				// echo '<pre>';
				// print_r($property_types);
				// die;
				foreach ($property_types as $pt) {
			 		$property_type =  $pt->id;
			 		//echo $property_type;
						DB::enableQueryLog();
						
						$where="rpqr.location_id=".$requestdata->state_id." and rpqr.coverage_type_id=".$requestdata->cov_type_id." and rpqr.property_type_id=".$property_type;

						
						$qinfo= DB::select('select question_id,question,input_name,input_type,valid_options,default_value from realstate_propertype_question_relationship rpqr INNER JOIN realstate_property_type_questions rptq ON rptq.id=rpqr.question_id where '.$where. '  order by rpqr.id asc ');

			 			$query = DB::getQueryLog();
						$lastQuery = end($query);
						
						//echo $lastQuery['query'];
						//die;
						// echo '<pre>';
						// print_r($qinfo);
						// die;

						if(!empty($qinfo)){
							$question_info=[];
							$i=0;
							
							foreach ($qinfo as $qi) {
								
								//echo ($qi->question_id);
								//die;
								
								$question_info[$i]['question_id']=$qi->question_id;
								$question_info[$i]['question_name']=$qi->question;
								if($qi->input_type=='radio'){
									$question_info[$i]['options']=[];
									$valid_options =  explode(",",$qi->valid_options);
				 					if(!empty($valid_options)){
					 					
					 					for($j=0;$j<count($valid_options);$j++){
					 						
					 						$question_info[$i]['options'][$j][$qi->input_name]=$valid_options[$j];
					 						
					 			 			

					 						$where="rqr.location_id=".$requestdata->state_id." and rqr.coverage_type_id=".$requestdata->cov_type_id." and rqr.property_type_id=".$property_type." and rqr.question_id=".$property_type." and question_value='".$qi->default_value."'";

						
											$qr_info= DB::select('select question_value from rs_question_relationships rqr where '.$where. '  order by rqr.id asc');

								 			$query = DB::getQueryLog();
											$lastQuery = end($query);
											
											//echo $lastQuery['query'];
											//die;
											//echo '<pre>';
											// print_r($qr_info);
											// die;
											if(!empty($qr_info)){
												
													if($qr_info[0]->question_value==$valid_options[$j]){
							 							$question_info[$i]['options'][$j]['selected']=true;
							 						}
							 			 			else{
							 			 				$question_info[$i]['options'][$j]['selected']=false;
							 			 			}
												
											}
											else{
												if($qi->default_value==$valid_options[$j]){
							 							$question_info[$i]['options'][$j]['selected']=true;
						 						}
						 			 			else{
						 			 				$question_info[$i]['options'][$j]['selected']=false;
						 			 			}
											}
					 			 			
					 					}
					 					
				 					}
				 					
								}
								else if($qi->input_type=='text'){
									$question_info[$i]['value']=$qi->default_value;
								}

								
								
			 							 					
			 					$i++;
			 				}	
			 				//$question_info=array_unique($question_info,SORT_REGULAR);
			 				$pt->pt_questions=$question_info;
						}
			 			
			
			 	}
			 	
			}
			if( !empty($property_types) ){
				return response()->json([
						"result" => true,
						"questions" => $property_types,
				], 201);
			}
			else{
				return response()->json([
						"result" => false,
						"message" => "No Question Found",
				], 422);
			}
		}	
	}
    
	public function getProducts( Request $request ) {
		
		$requestdata = (object)$request->json()->all();
		$rules = array(
			'state_id' => 'required|numeric',
			'cov_type_id' => 'required|numeric',
			'property_type' => 'required|numeric',
		);
		
		$validator = Validator::make($request->all(),$rules);
		if($validator->fails()){
			return response()->json([
				"result" => false,
				"message" => $validator->errors()->first(),
			], 422);
		} 
		else {
			$posted_questions=array();
			foreach($requestdata as $key=>$value){
				$posted_questions[$key]=$value;
			}
			// echo '<pre>';
			// print_r($posted_questions);
			 
			unset($posted_questions['state_id']);
			unset($posted_questions['cov_type_id']);
			unset($posted_questions['property_type']);
			//echo '<pre>';
			// print_r($posted_questions);
			//die;
			
			if(!empty($posted_questions)){
				
				// Common Where clause
				$where='location_id='.$requestdata->state_id.' and coverage_type_id='.$requestdata->cov_type_id.' and property_type_id ='.$requestdata->property_type;
				$common_products='';
				for($i=0;$i<count($posted_questions)/2;$i++){
					if(array_key_exists('question_id_'.$i, $posted_questions) && array_key_exists('question_value_'.$i, $posted_questions)){
						
						$question_where=' question_id'.'='.$posted_questions['question_id_'.$i].' and '.'question_value '.'="'.$posted_questions['question_value_'.$i].'"'; 
						
						DB::enableQueryLog();

						$relation_products= DB::select('select products as product_ids from rs_question_relationships where '.$where.' and '.$question_where);
				
						$query = DB::getQueryLog();
						$lastQuery = end($query);
						
						//echo $lastQuery['query'];
						//die;


						if( !empty( $relation_products ) ){

							// echo '<pre>';
						 //    print_r($relation_products);
							//die;

							// Getting all the product_ids applied on all the questions;
							foreach ($relation_products as $rps) {
								$ids =  $rps->product_ids;
								$idarray =  explode(',',$ids);
								sort($idarray);
								if($i==0){
									$common_products=$idarray;
								}
								else{
									// for($j=0;$j<count($common_products);$j++){
									// 	if(in_array($idarray[$j],$common_products)){

									// 	}
									// }
									$cp=array_intersect($idarray,$common_products);
									sort($cp);
									$common_products=$cp;
								}
								 //echo '<pre>';
				 				 //print_r($common_products);
							}

						}	
						else{
							$common_products='';
						}

					}
					$relation_products='';
				}
				
				
				

				// Fetching product records

				$prodarray = array();
				if( isset($common_products) && !empty($common_products) ){

					


					// echo '<pre>';
				 //    print_r($common_products);
					// die;
					
					
					
					if(!empty($common_products)){
						foreach ($common_products as $prodid) {
							$productinfo = Realstate_products::where('id', $prodid)->first();
							$pro_features =array();

							// Features for Location
							$features = Realstate_features::where('location_id',$requestdata->state_id)->select('id','name')->get();
							
							// Features of Product
							$product_features=[];
							$pi=0;
							foreach($features as $f){

								$pro_features = Realstate_features_relationship::where('product_id',$prodid)->where('feature_id',$f['id'])->select('feature_id')->get();
								
								$product_features[$pi]=array();
								if(count($pro_features)>0){
									$product_features[$pi]['key']=$f['id'];
									$product_features[$pi]['value']='Yes';
								}
								else{
									$product_features[$pi]['key']=$f['id'];
									$product_features[$pi]['value']='No';
								}
								$pi++;
							}
							
							$productinfo->features=$product_features;
							$prodarray[] = $productinfo;
						}
					}
				}
			}
			else{
				$where=array('location_id'=>$requestdata->state_id,'coverage_type_id'=>$requestdata->cov_type_id,'question_type_id'=>$requestdata->property_type);
				
				// $relation_products = Realstate_realationship::where('location_id', $requestdata->state_id)
				// ->where('coverage_type_id', $requestdata->cov_type_id)
				// ->where('question_type_id', $requestdata->property_type)
				// ->select('product_ids')
				// ->get();
				$relation_products = Realstate_realationship::where($where)
				->select('product_ids')
				->get();

				// Fetching product records

				$prodarray = array();
				if( !empty( $relation_products ) ){

					foreach ($relation_products as $rps) {
						$ids =  $rps->product_ids;
						$idarray =  explode(',',$ids);
						foreach ($idarray as $prodid) {
							$productinfo = Realstate_products::where('id', $prodid)->first();
							$pro_features =array();

							// Features for Location
							$features = Realstate_features::where('location_id',$requestdata->state_id)->select('id')->get();
							
							// Features of Product
							$product_features=[];
							$pi=0;
							foreach($features as $f){

								$pro_features = Realstate_features_relationship::where('product_id',$prodid)->where('feature_id',$f['id'])->select('feature_id')->get();
								
								$product_features[$pi]=array();
								if(count($pro_features)>0){
									$product_features[$pi]['key']=$f['id'];
									$product_features[$pi]['value']='Yes';
								}
								else{
									$product_features[$pi]['key']=$f['id'];
									$product_features[$pi]['value']='No';
								}
								$pi++;
							}
							
							$productinfo->features=$product_features;
							$prodarray[] = $productinfo;

						}
					}
				}


			}
			

			
			if( isset($prodarray) && !empty($prodarray) ){
				return response()->json([
						"result" => true,
						"products" => $prodarray,
				], 201);
			}
			else{
				return response()->json([
						"result" => false,
						"message" => "No Products Found",
				], 422);
			}
		}	
	}

	public function getProductCoverage( $prod_id ) {
		
		if(empty($prod_id) || !is_numeric($prod_id)){
			return response()->json([
				"result" => false,
				"message" => 'Invalid Product Id provided'
			], 422);
		} 
		else {
			DB::enableQueryLog();
						
			$where="c.product_id=".$prod_id;

			
			$coverage_upgrades= DB::select('select * from realstate_coverage c where '.$where. '  order by c.id asc ');

 			$query = DB::getQueryLog();
			$lastQuery = end($query);
			
			//echo $lastQuery['query'];
			//die;
			// echo '<pre>';
			// print_r($coverage_upgrades);
			// die;
			if( !empty($coverage_upgrades) ){
				$newupgrades = array();
				foreach ($coverage_upgrades as $upgrade) {
					$upgrade->content=json_decode($upgrade->content);
					$upgrade->info=json_decode($upgrade->info);
					switch($upgrade->coverage_type){
						case 'number':
						$upgrade->quantity = 0;
						break;
						case 'default':
						$upgrade->quantity = 1;
						break;
						case 'checkbox':
						$upgrade->quantity = 0;
						break;
					}
					
					$newupgrades[] = $upgrade;
				}
				return response()->json([
						"result" => true,
						"coverage_upgrades" => $newupgrades,
				], 201);
			}
			else{
				return response()->json([
						"result" => false,
						"message" => "No Product Coverage Found",
				], 422);
			}
		}	
	}

	public function getLocationFeatures( Request $request ) {
		$requestdata = (object)$request->json()->all();
		$rules = array(
			'state_id' => 'required|numeric',
		);
		$validator = Validator::make($request->all(),$rules);
		if($validator->fails()){
			return response()->json([
				"result" => false,
				"message" => $validator->errors()->first(),
			], 422);
		} 
		else {
			DB::enableQueryLog();
						
			$where="f.location_id=".$requestdata->state_id;

			
			$features= DB::select('select * from realstate_product_features f where '.$where. '  order by f.id asc ');

 			$query = DB::getQueryLog();
			$lastQuery = end($query);
			
			//echo $lastQuery['query'];
			//die;
			// echo '<pre>';
			// print_r($coverage_upgrades);
			// die;
			if( !empty($features) ){
				return response()->json([
						"result" => true,
						"features" => $features,
				], 201);
			}
			else{
				return response()->json([
						"result" => false,
						"message" => "No Feature Found",
				], 422);
			}
		}	
	}

	public function getProductRelations( Request $request ) {
		$requestdata = (object)$request->json()->all();
		$rules = array(
			'product_id' => 'required|numeric',
		);
		$validator = Validator::make($request->all(),$rules);
		if($validator->fails()){
			return response()->json([
				"result" => false,
				"message" => $validator->errors()->first(),
			], 422);
		} 
		else {
			DB::enableQueryLog();
						
			
			
			$relations= DB::select("SELECT rr.id,rl.location_name,rct.co_type_name,rpt.name,rr.product_ids FROM realstate_relationships rr INNER JOIN realstate_locations rl ON rl.id=rr.location_id INNER JOIN realstate_coverage_types rct on rct.id=rr.coverage_type_id INNER JOIN realstate_property_type rpt ON rpt.id=rr.question_type_id WHERE ( product_ids LIKE('".$requestdata->product_id.",%') OR product_ids LIKE('%,".$requestdata->product_id."') OR product_ids LIKE('%,".$requestdata->product_id.",%') OR product_ids LIKE('".$requestdata->product_id."'))");

 			$query = DB::getQueryLog();
			$lastQuery = end($query);
			
			//echo $lastQuery['query'];
			//die;
			// echo '<pre>';
			// print_r($coverage_upgrades);
			// die;
			if( !empty($relations) ){
				return response()->json([
						"result" => true,
						"relations" => $relations,
				], 201);
			}
			else{
				return response()->json([
						"result" => false,
						"message" => "No Relation Found",
				], 422);
			}
		}
	}

	    public static function getRealstateFeatures($location_id)
    {
        $titles = RealstateFeaturesTitle::leftJoin('realstate_locations','realstate_locations.id', '=','realstate_features_title.location_id')
        ->where('realstate_locations.id' ,$location_id)
        ->select('realstate_locations.location_name','realstate_features_title.*')
        ->get();

       foreach($titles as $title)
        {
          $features = RealstateFeatures::where('sf_title_id', $title->id)
          ->select('feature_name')
          ->get();
          $title['features'] = $features;
        }    
        return response()->json($titles,200);
    }	
}
