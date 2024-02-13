

class AppExceptions implements Exception{

    final message;
    final prefix;

    AppExceptions({required this.message,this.prefix});

    String toString(){
        return "$prefix$message";
    }
}


class InternetException extends AppExceptions{

    InternetException({required super.message});
    
}


class RequestTimeOutException extends AppExceptions{

    RequestTimeOutException({required super.message});
    
}

class ServerException extends AppExceptions{

    ServerException({required super.message});
    
}

class InvalidURLException extends AppExceptions{

    InvalidURLException({required super.message});
    
}

class FetchDataException extends AppExceptions{

    FetchDataException({required super.message});
    
}

