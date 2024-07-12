// ApiClient class for handling HTTP requests using Dio
// Implements various HTTP methods and handles errors and responses
// Utilizes Dio for making HTTP requests and PrettyDioLogger for logging

// ignore_for_file: constant_identifier_names

import 'package:ecommerce_assignment/utils/app_export.dart';
import 'package:ecommerce_assignment/utils/pref_utils.dart';

enum RequestType { GET, POST, PUT, DELETE, MULTIPART_POST }

class ApiClient {
  final Dio _dio;

  ApiClient()
      : _dio = Dio(BaseOptions(
          headers: _buildHeaders(),
        )) {
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }

  // Method to build headers for HTTP requests
  static Map<String, String> _buildHeaders() {
    final headers = <String, String>{'Content-Type': 'application/json'};
    String? authToken = PrefObj.preferences?.get(PrefKeys.DEVICETOKEN) ?? '';
    if (authToken!.isNotEmpty) {
      headers['Authorization'] = 'Bearer $authToken';
    }
    return headers;
  }

  Future<Map<String, dynamic>> request(
    RequestType requestType,
    String path, {
    Map<String, dynamic>? data,
    Map<String, String>? multipartData,
    bool withoutMessage = false,
  }) async {
    Response response;

    try {
      switch (requestType) {
        case RequestType.GET:
          response = await _dio.get(path);
          break;
        case RequestType.POST:
          response = await _dio.post(path, data: data);
          break;
        case RequestType.PUT:
          response = await _dio.put(path, data: data);
          break;
        case RequestType.DELETE:
          response = await _dio.delete(path);
          break;
        case RequestType.MULTIPART_POST:
          FormData formData = FormData();
          if (multipartData != null && multipartData.isNotEmpty) {
            for (var entry in multipartData.entries) {
              if (entry.value.isNotEmpty) {
                formData.files.add(
                  MapEntry(
                    entry.key,
                    await MultipartFile.fromFile(entry.value),
                  ),
                );
              } else {
                formData.fields.add(entry);
              }
            }
          }
          response = await _dio.post(path, data: formData);
          break;
        default:
          throw ArgumentError('Invalid request type');
      }

      return withoutMessage
          ? _handlewithoutMessageResponse(response)
          : _handleResponse(response);
    } catch (error) {
      if (error is DioException) {
        return _handleError(error);
      } else {
        rethrow;
      }
    }
  }

  // Method to handle successful HTTP responses
  Map<String, dynamic> _handleResponse(Response response) {
    BuildContext? context;
    if (response.statusCode == 200 || response.statusCode == 201) {
      toastification.show(
        context: context,
        type: ToastificationType.success,
        showProgressBar: false,
        title: Text(response.data['message']),
        autoCloseDuration: const Duration(seconds: 5),
      );
      return response.data;
    } else {
      throw _handleNonSuccessStatus(response);
    }
  }

  Map<String, dynamic> _handlewithoutMessageResponse(Response response) {
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data;
    } else {
      throw _handleNonSuccessStatus(response);
    }
  }

  // Method to handle non-successful HTTP responses
  Map<String, dynamic> _handleNonSuccessStatus(Response response) {
    BuildContext? context;
    if (response.statusCode == 400) {
      toastification.show(
        context: context,
        type: ToastificationType.error,
        showProgressBar: false,
        title: Text(response.data['message']),
        autoCloseDuration: const Duration(seconds: 5),
      );
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.badResponse,
      );
    } else if (response.statusCode == 401) {
      toastification.show(
        context: context,
        type: ToastificationType.error,
        showProgressBar: false,
        title: Text(response.data['message']),
        autoCloseDuration: const Duration(seconds: 5),
      );

      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.unknown,
      );
    } else {
      toastification.show(
        context: context,
        type: ToastificationType.error,
        showProgressBar: false,
        title: Text(response.data['message']),
        autoCloseDuration: const Duration(seconds: 5),
      );

      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.badResponse,
      );
    }
  }

  // Method to handle Dio errors
  Map<String, dynamic> _handleError(DioException error) {
    BuildContext? context;
    if (error.response != null) {
      return _handleNonSuccessStatus(error.response!);
    } else {
      toastification.show(
        context: context,
        type: ToastificationType.error,
        showProgressBar: false,
        title: Text(error.response?.data['message']),
        autoCloseDuration: const Duration(seconds: 5),
      );
      throw DioException(
        requestOptions: error.requestOptions,
        error: error.error,
        type: DioExceptionType.unknown,
      );
    }
  }
}
