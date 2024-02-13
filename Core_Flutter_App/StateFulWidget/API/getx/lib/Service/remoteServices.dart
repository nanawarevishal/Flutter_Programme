
import 'package:getx/Models/ProductModel.dart';
import 'package:http/http.dart' as http;

class RemoteServices{

    static var Client = http.Client();

    static Future<List<ProductModel>> fetchProducts()async{

        var resposne = await Client.get(Uri.parse("https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"));

        var jsonString = resposne.body;

        return productModelFromJson(jsonString);

    }
}