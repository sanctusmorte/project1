<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiAuthorizationController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "authorization";        
				$this->permalink   = "authorization";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		        $tel_numbers_from_db = DB::select('select tel_number from users');
		        $tel_numbers = [];
		        foreach ( $tel_numbers_from_db as $tel_number_from_db )
		        {
		            $tel_numbers[] = $tel_number_from_db->tel_number;
		        }
		        
		        $response = [
		            'api_status' => 0,
		            'api_message' => 'Ошибка!',
		            'errors' => []
		        ];
		        
		        If ( array_search($postdata['tel_number'], $tel_numbers) === false ) {
		            $response['errors']['email'] = 'Пользователя с таким телефоном не существует! Выдать токен доступа не могу =) Зарегестрируйтесь, чтобы получить токен!)';
		            $resp = response()->json($response);
                    $resp->send();
                    exit;
		        } else {
		            
		        }
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		         //This method will be execute after run the main process
		        
		        If ( $result['api_message'] === 'The request method is not allowed !' ) {
		            $response['errors']['method_type'] = 'Метод должен быть POST!';
		            $resp = response()->json($response);
                    $resp->send();
                    exit; 		            
		        }
		        
                If ( isset($postdata['password']) === false AND isset($postdata['tel_number']) === false ) {
		            $response['errors']['tel_number'] = 'Поле tel_number обязательно!';
                    $response['errors']['password'] = 'Поле password обязательно!';
		            $resp = response()->json($response);
                    $resp->send();
                    exit;                     
                } else if ( isset($postdata['password']) === false ) {
		            $response['errors']['password'] = 'Поле password обязательно!';
		            $resp = response()->json($response);
                    $resp->send();
                    exit;                      
                } else if ( isset($postdata['tel_number']) === false ) {
                    $response['errors']['tel_number'] = 'Поле tel_number обязательно!';
		            $resp = response()->json($response);
                    $resp->send();
                    exit;                      
                } else {
                    
                }
		       
                $auth_token = DB::select('select auth_key from users where tel_number = '.$postdata['tel_number'].' ');
                DB::update('update authorization set auth_key = "' .$auth_token[0]->auth_key. '" where id = '.$result['id'].' ');
		        unset($result['id']);
		        $result['auth_token'] = $auth_token;
		    }

		}