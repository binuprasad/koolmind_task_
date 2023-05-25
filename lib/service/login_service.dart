import 'dart:developer';
import 'package:dio/dio.dart';
import '../model/loginresponse_model.dart';

class AuthService {
  Future<LoginResponseModel?> loginpageService(
      String email, String password, String device, String token) async {
    var dio = Dio();
    var url = 'http://koolmindapps.com/khomes/api/v1/auth/login';

    Map<String, dynamic> formData = {
      'email': email,
      'password': password,
      'device': device,
      'device_token': token,
    };
    log('$formData ----------------this formdata');

    try {
      Response response = await dio.post(url,
          data: formData,
          options: Options(headers: {
            'Cookie':
                'XSRF-TOKEN=eyJpdiI6Ikh3bjNkNldRZVUxYlREWjVMdklYRWc9PSIsInZhbHVlIjoidk8zcGdnYmxwMGdkMy91QytzNjRMaXU1b3JTNTdISzAwTnFzajFvVVVyaTJyWnhpU2prcFA5UEZPWm9MbTZZR3R4SUFwOFZzY0dQQlRpVDRrZTBkZGk2c21OMERoUzlYaE9MSlM2ZUVDZkt5Nk4yNFR2dXEzUy90dlJkWm5Jd3MiLCJtYWMiOiIwZTZhY2M5NTZlYmQ1YjdmMGRhZmFlYjVkM2IzNmRiMTc5YzkzNzM2ZGJlNTAzNGQ1MmNlNzgzY2NiYzNlMDczIn0%3D; khomes_session=eyJpdiI6IlN1aFZtUDBDeFE2am1sdHJ5dXpISnc9PSIsInZhbHVlIjoiY3ptRXdQZEtXK21kZ2ljMU9PbFgxNnJxckgwYnJxbFd4ZEI1OThRbEJsN1FaeHIyWU1UemM1NVFMa3VHWllXcDFwNzcwSkt3c3ZyeEc2QkNTaitlaHBoWEdHSEVBU1RwR0JDQXQrOEs1QUJ4bXlYWWJoQys4STFSbEtsVjNTMXciLCJtYWMiOiIyOWIyZTA3N2E3N2Y1N2RjYjJlZDgyOGYwY2U4N2Y3NTE2NWUyODZhODRjZTM3ZGQ3MTJlMjc3OGY3OTMwYWZmIn0%3D'
          }));
      log(response.data.toString());

      return LoginResponseModel.fromJson(response.data);
    } catch (error) {
      log('Error: $error');
    }
    return null;
  }
}
