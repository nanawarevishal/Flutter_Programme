
abstract class BaseAPIService{

    Future<dynamic> getAPI(String URL);

    Future<dynamic> postAPI(dynamic data,String URL);
}