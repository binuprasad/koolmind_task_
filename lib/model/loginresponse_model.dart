



class LoginResponseModel {
    Data data;
    String accessToken;
    String tokenType;
    int statusCode;

    LoginResponseModel({
        required this.data,
        required this.accessToken,
        required this.tokenType,
        required this.statusCode,
    });

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
        data: Data.fromJson(json["data"]),
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        statusCode: json["status_code"],
    );

}

class Data {
    String id;
    String referralId;
    dynamic referredId;
    String firstName;
    String lastName;
    String email;
    String phone;
    dynamic avatar;
    bool active;
    String provider;
    String device;
    String language;
    dynamic otp;
    String timezone;
    String status;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    String role;
    bool isVerified;
    String name;

    Data({
        required this.id,
        required this.referralId,
        this.referredId,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.phone,
        this.avatar,
        required this.active,
        required this.provider,
        required this.device,
        required this.language,
        this.otp,
        required this.timezone,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.role,
        required this.isVerified,
        required this.name,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        referralId: json["referral_id"],
        referredId: json["referred_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phone: json["phone"],
        avatar: json["avatar"],
        active: json["active"],
        provider: json["provider"],
        device: json["device"],
        language: json["language"],
        otp: json["otp"],
        timezone: json["timezone"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        role: json["role"],
        isVerified: json["is_verified"],
        name: json["name"],
    );

 
}
