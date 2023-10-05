import 'package:dio/dio.dart';
import 'models/product/product.dart';
import 'models/get_prod/get_prod.dart';

void main(List<String> arguments) async{
  Dio client = Dio();
  String url = 'https://myfakeapi.com/api/cars/';
  
  var response = await client.get(url);
  GetProd data = GetProd.fromJson(response.data);

  List<Cars> carsMassive = data.cars; // массив объектов
  double min = 10000.0; // минимальное значение
  int idi = 0;
  for (var el in carsMassive) {
    String str = el.price;
    if (double.parse(str.substring(1)) < min && el.availability == true) {
      min = double.parse(str.substring(1));
      idi = el.id;
    }
  } 

  print(idi);
}