import 'package:dio/dio.dart';
import '../../utils/strings/my_strings.dart';


class NetworkService {
  static late Dio dio;

  static initDio() {
    dio = Dio(
      BaseOptions(
        receiveDataWhenStatusError: true,
        baseUrl: BaseUrl,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      ),
    );
  }

  static Future<Response> getData({required String endPoint}) async {
print(BaseUrl+endPoint);

   return await dio.get(endPoint);

   
  }
}