

import 'package:mvc/data/response/status.dart';

class APIResponse<T>{

    Status? status;

    T? data;
    String? message;

    APIResponse(this.status,this.data,this.message);

    APIResponse.loading():status = Status.LOADING;
    APIResponse.error(this.message):status = Status.ERROR;
    APIResponse.complete(this.data):status = Status.COMPLETED;
    
    @override
    String toString(){
        return "Status: $status \n Message: $message \n Data: $data";
    }

    

}