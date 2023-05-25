
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

import '../model/auth_model.dart';

class AuthService {
 

Future<LoginModel?> loginpageService(String email,String password,String device,String token) async {
  var dio = Dio();
  var url = 'http://koolmindapps.com/khomes/api/v1/auth/login';

  // Set cookies in the request header
  dio.options.headers['Cookie'] =
      'XSRF-TOKEN=eyJpdiI6Ikh3bjNkNldRZVUxYlREWjVMdklYRWc9PSIsInZhbHVlIjoidk8zcGdnYmxwMGdkMy91QytzNjRMaXU1b3JTNTdISzAwTnFzajFvVVVyaTJyWnhpU2prcFA5UEZPWm9MbTZZR3R4SUFwOFZzY0dQQlRpVDRrZTBkZGk2c21OMERoUzlYaE9MSlM2ZUVDZkt5Nk4yNFR2dXEzUy90dlJkWm5Jd3MiLCJtYWMiOiIwZTZhY2M5NTZlYmQ1YjdmMGRhZmFlYjVkM2IzNmRiMTc5YzkzNzM2ZGJlNTAzNGQ1MmNlNzgzY2NiYzNlMDczIn0%3D; khomes_session=eyJpdiI6IlN1aFZtUDBDeFE2am1sdHJ5dXpISnc9PSIsInZhbHVlIjoiY3ptRXdQZEtXK21kZ2ljMU9PbFgxNnJxckgwYnJxbFd4ZEI1OThRbEJsN1FaeHIyWU1UemM1NVFMa3VHWllXcDFwNzcwSkt3c3ZyeEc2QkNTaitlaHBoWEdHSEVBU1RwR0JDQXQrOEs1QUJ4bXlYWWJoQys4STFSbEtsVjNTMXciLCJtYWMiOiIyOWIyZTA3N2E3N2Y1N2RjYjJlZDgyOGYwY2U4N2Y3NTE2NWUyODZhODRjZTM3ZGQ3MTJlMjc3OGY3OTMwYWZmIn0%3D';

  // Set form data
  var formData = FormData.fromMap({
    'email': email,
    'password': password,
    'device': device,
    'device_token': token,
  });

  try {
    var response = await dio.post(url, data: formData.toString());
    // Process the response here
    log(response.data);
    Map<String, dynamic> jsonData = jsonDecode(response.data);


    return LoginModel.fromJson(jsonData);
 
  } catch (error) {
    // Handle any errors that occur during the request
    print('Error: $error');
  }
  return null;

  

}

 
}
