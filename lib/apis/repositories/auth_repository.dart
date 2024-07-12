import 'package:ecommerce_assignment/utils/app_export.dart';

class AuthRepository {
  final ApiClient apiClient;

  AuthRepository({required this.apiClient});

  Future<SignInModel> loginApi({
    required String creds,
    required String password,
  }) async {
    try {
      final Map<String, dynamic> postData = {
        'creds': creds,
        'password': password,
      };

      var response = await apiClient.request(
          RequestType.POST, APIEndPoints.baseURL + APIEndPoints.login,
          data: postData);

      return SignInModel.fromJson(response);
    } catch (e) {
      Logger.lOG('Error posting phone number data: $e');
      rethrow;
    }
  }
}

class SignInModel {
  bool? status;
  String? message;
  String? token;

  SignInModel({
    this.status,
    this.message,
    this.token,
  });

  SignInModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['token'] = token;
    return data;
  }
}
