
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';


class MYConmtroller extends GetxController{
var productlist=[].obs;
  var count=0.obs;

  void incremnet(){
    count++;
    print('on increment  $count');
  }
  void decrement(){
    count--;
        print('on decrement  $count');

  }



@override
void onInit(){
  getprofileap();

  super.onInit();
}


  
Future<void>getprofileap()async{
  try{
final response = await http.get(
  Uri.parse('https://app1.crazzyhub.com/api/product-list/'),
  headers: {
    'Token':'afceab888e69ecd14051d7ccb130ddddc6c79ea3'
  }
);
final  data = json.decode(response.body) ;
print(response.body);


productlist.value =data['data']['product_list'];
print('mylist   ${productlist}');


  }catch(error){
    print(error);
 throw Exception();
  }

}






}