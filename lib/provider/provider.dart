
import 'package:get/get.dart';
import 'package:vinove_practice/constants/api_constants/api_constants.dart';

class Provider extends GetConnect {

  Future<dynamic> getCall(String endPoint) async {
    try{
      print(networkUrl+endPoint);
      final response = await get(networkUrl + endPoint);
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        return response.body;
      }
    }catch(e){
      print(e);
    }
  }

  Future<dynamic> postCall(String endPoint, String body) async {
    print(networkUrl + endPoint);
    final response = await post(networkUrl + endPoint, body);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }
}
