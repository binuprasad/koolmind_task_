import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/appconstants.dart';
import '../../controller/login_controller.dart';
import '../widgets/textform_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final logincontroller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: Appconstants.height(context) * 0.06,
            left: 15.0,
            right: 8.0,
            bottom: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Appconstants.height(context) * 0.2,
                width: Appconstants.width(context) * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/koehpa_logo2.png'),
                      fit: BoxFit.fill),
                ),
              ),
              Appconstants.height20,
              const Text(
                'Sign in',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              Appconstants.height10,
              const Text(
                'Hello there, login to continue',
                style: TextStyle(fontSize: 20),
              ),
              Appconstants.height30,
              Form(
                key:logincontroller.formKey ,
                child: Column(children: [
                  TextformfieldWidget(
                  controller: logincontroller.emailController,
                  labeltext: 'Email',validator: (value) {
                     logincontroller.emailValidator(value);
                        return null;
                  },
                ),
                Appconstants.height10,
                Obx(
                  () => TextformfieldWidget(
                      labeltext: 'Password',
                      obscureIcon: logincontroller.isobscure.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                          validator: (value){
                             logincontroller.passwordValidator(value);
                            return null;
                          },
                      controller: logincontroller.passwordController),
                ),
                ],),
              ),
              
              Appconstants.height20,
              GetBuilder<LoginController>(builder: (controller) =>SizedBox(
                width: Appconstants.width(context),
                height: Appconstants.height(context) * 0.09,
                child:GetBuilder<LoginController>(builder: (controller) => ElevatedButton(
                  onPressed: () {
                   
                    
                   logincontroller. loginButtonFunction();
                    logincontroller.buttonclickValidator();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ) ,),
                 
              ) ,),
              
              Appconstants.height20,
              const Center(
                child: Text(
                  'or sign in with',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Appconstants.height20,
              SizedBox(
                width: Appconstants.width(context),
                height: Appconstants.height(context) * 0.09,
                child: ElevatedButton(
                    onPressed: () {
          
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/googleIcon .jpg'),
                        //  const ImageIcon(AssetImage('assets/icons/googleIcon .jpg')),
                        label: const Text('Google'))),
              ),
              Appconstants.height20,
               Center(
                child: InkWell(
                  child: SizedBox(
                    width: Appconstants.width(context)*0.5,
                    child: const Row(
                      children: [
                        Text(
                          'Create account  ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
