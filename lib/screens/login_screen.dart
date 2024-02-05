import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black.withOpacity(0.5),
                      )
                  ),
                  cursorColor: Colors.black,
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
                  Get.toNamed('/sign-up');
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
