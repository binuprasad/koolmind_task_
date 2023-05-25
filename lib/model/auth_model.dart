

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    String email;
    String password;
    String device;
    String deviceToken;

    LoginModel({
        required this.email,
        required this.password,
        required this.device,
        required this.deviceToken,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        email: json["email"],
        password: json["password"],
        device: json["device"],
        deviceToken: json["device_token"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "device": device,
        "device_token": deviceToken,
    };
}
