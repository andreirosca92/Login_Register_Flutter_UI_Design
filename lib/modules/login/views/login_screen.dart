import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_register_flutter_ui_design/modules/login/controllers/login_controller.dart';
class LoginScreen extends GetView<LoginController>{
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Material(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/secure_login.png",
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF9A826).withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Username",
                    prefixIcon: Icon(Icons.person,
                      color: Colors.black.withOpacity(0.5),
                    ),

                  ),
                  cursorColor: Colors.black,
                ),
              ),

            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF9A826).withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Center(

                child: Obx(()=>TextFormField(
                  obscureText:controller.isPasswordHidden.value,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      suffixIcon: InkWell(
                        onTap: (){
                          controller.isPasswordHidden.value = !controller.isPasswordHidden.value;
                        },
                        child: Icon(
                          controller.isPasswordHidden.value ? Icons.visibility: Icons.remove_red_eye_outlined,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      )
                  ),
                  cursorColor: Colors.black,
                ),
              ),
              ),
            ),
            SizedBox(height: 50,),
            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF9A826).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Center(
                  child: Text(
                    "Login In",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2,
                        color: Colors.black54
                    ),
                  ),
                ),

              ),
            ),
            SizedBox(height:30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontSize: 18,

                      color: Colors.black54
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(onTap: (){
                  Get.toNamed('/register');
                },

                  child: Text("Sign Up",
                    style: TextStyle(
                      color: Color(0xFFF9A826),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
