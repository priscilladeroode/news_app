import 'package:dio/dio.dart';

import 'package:news_app/service/http_service.dart';

const BASE_URL = "https://newsapi.org/";
const API_KEY = "b644edc5c49f43db874d274ff261f736";

class HttpServiceImpl implements HttpService {
  Dio? _dio;

  @override
  Future<Response> getRequest(String url) async {
    Response response;
    try {
      response = await _dio!.get(url);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  initializeInterceptors() {
    _dio!.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          print(error.message);
          return handler.next(error);
        },
        onRequest: (request, handler) {
          print("${request.method}| ${request.path}");
          return handler.next(request);
        },
        onResponse: (response, handler) {
          print(
              "${response.statusCode} ${response.statusMessage} ${response.data}");
          return handler.next(response);
        },
      ),
    );
  }

  @override
  void init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        headers: {"Authorization": API_KEY},
      ),
    );
    initializeInterceptors();
  }
}
