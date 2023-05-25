




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


    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "device": device,
        "device_token": deviceToken,
    };
}
