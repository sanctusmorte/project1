<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiRegistrationController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "users";        
				$this->permalink   = "registration";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		        
		        $emails_from_db = DB::select('select email from users');
		        $emails = [];
		        foreach ( $emails_from_db as $email_from_db )
		        {
		            $emails[] = $email_from_db->email;
		        }
		        
		        $usernames_from_db = DB::select('select username from users');
		        $usernames = [];
		        foreach ( $usernames_from_db as $username_from_db )
		        {
		            $usernames[] = $username_from_db->username;
		        }
		        
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
		        
		        If ( array_search($postdata['email'], $emails) !== false AND array_search($postdata['username'], $usernames) !== false AND array_search($postdata['tel_number'], $tel_numbers) !== false ) {
		            $response['errors']['email'] = 'Пользователь с таким Email уже существует!';
		            $response['errors']['username'] = 'Пользователь с таким Username уже существует!';
		            $response['errors']['tel_number'] = 'Пользователь с таким Телефоном уже существует!!';
		            $resp = response()->json($response);
                    $resp->send();
                    exit;
		        } else if ( array_search($postdata['email'], $emails) !== false ) {
		            $response['errors']['email'] = 'Пользователь с таким Email уже существует!';
		            $resp = response()->json($response);
                    $resp->send();
                    exit;		            
		        } else if ( array_search($postdata['username'], $usernames) !== false ) {
		            $response['errors']['username'] = 'Пользователь с таким Username уже существует!';
		            $resp = response()->json($response);
                    $resp->send();
                    exit;		            
		        } else if ( array_search($postdata['tel_number'], $tel_numbers) !== false ) {
		            $response['errors']['tel_number'] = 'Пользователь с таким Телефоном уже существует!!';
		            $resp = response()->json($response);
                    $resp->send();
                    exit;		            
		        } else {
		            
		        }
		        
    
               
		        

		       
		    }

		    public function hook_query(&$query) {
		        

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
		        
		        $auth_token = openssl_random_pseudo_bytes(20);
		        $auth_token = bin2hex($auth_token); 
		        DB::update('update users set auth_key = "' .$auth_token. '" where id = "'.$result['id'].'" ');
		        unset($result['id']);
		        If ( $result['api_status'] === 0 ) {
		            
		        } else {
		            $result['auth_token'] = $auth_token;
		        }

		    }

		}