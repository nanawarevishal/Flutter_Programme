import 'package:get/get.dart';
import 'package:getx/Models/ProductModel.dart';
import 'package:getx/Service/remoteServices.dart';

class ProductController extends GetxController {
  var productList = <ProductModel>[].obs;

    @override
    void onInit(){
        fetchProduct();
        super.onInit();
    }

    void fetchProduct() async{
        var products = await RemoteServices.fetchProducts();

        if(products!=null){
            productList.value = products;
        }
    }

}
