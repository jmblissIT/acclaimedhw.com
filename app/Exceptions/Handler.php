<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * @param  \Throwable  $exception
     * @return void
     *
     * @throws \Throwable
     */
    public function report(Throwable $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Throwable  $exception
     * @return \Symfony\Component\HttpFoundation\Response
     *
     * @throws \Throwable
     */
    public function render($request, Throwable $e)
    {
        if ($request->wantsJson() && !($e instanceof ValidationException)) {
            $response = [
                'message' => (string)$e->getMessage(),
                'status_code' => 400,
            ];
    
            if ($e instanceof HttpException) {
                $response['message'] = Response::$statusTexts[$e->getStatusCode()];
                $response['status_code'] = $e->getStatusCode();
            } else if ($e instanceof ModelNotFoundException) {
                $response['message'] = Response::$statusTexts[Response::HTTP_NOT_FOUND];
                $response['status_code'] = Response::HTTP_NOT_FOUND;
            }
            return response()->json([
                'result'      => false,
                'message'     => $response['message'],
                'status_code' => $response['status_code'],
            ], $response['status_code']);
        }
        return parent::render($request, $e);
    }
}
