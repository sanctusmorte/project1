<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiGetProductByIdController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "orders";        
				$this->permalink   = "get_product_by_id";    
				$this->method_type = "get";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
		        If ( $result['api_status'] === 0 ) {
		            
		        } else {
    		        $total = $result['quantity'] * $result['price_usd'];
    		        $result['total'] = $total . " USD";
		        }

                
		    }

		}