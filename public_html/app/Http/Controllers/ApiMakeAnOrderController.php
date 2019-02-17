<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiMakeAnOrderController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "orders";        
				$this->permalink   = "make_an_order";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
                $auth_tokens_from_db = DB::select('select auth_key from users');
                $auth_tokens = [];
                foreach ( $auth_tokens_from_db as $auth_token_from_db ) {
                    $auth_tokens[] = $auth_token_from_db->auth_key;
                }
                
		        $response = [
		            'api_status' => 0,
		            'api_message' => 'Ошибка!',
		            'errors' => []
		        ];      
		        
		        If ( array_search($postdata['auth_key'], $auth_tokens) === false)  {
		            $response['errors']['email'] = 'Невалидный токен!';
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
                unset($result['id']);
              
                
		    }

		}