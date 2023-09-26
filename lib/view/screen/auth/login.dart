import 'package:ecommerce1/core/constant/color.dart';
import 'package:ecommerce1/view/widget/auth/logoauth.dart';
import 'package:ecommerce1/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce1/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce1/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        // ignore: deprecated_member_use
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: const [
            LogoAuth(),
            CustomTextTitleAuth(text: "Welcome Back"),
            SizedBox(height: 10),
            CustomTextBodyText(
                text:
                    "Sign In With Your Email And Password Or Continue With Social Media"),
            SizedBox(height: 65),
            CustomTextFormAuth(
              hinttext: "Enter Your Email",
              iconData: Icons.email_outlined,
              labeltext: "Email",
              //mycontroller: ,
            ),
            CustomTextFormAuth(
              hinttext: "Enter Your Password",
              iconData: Icons.lock_outline,
              labeltext: "Password",
              //mycontroller: ,
            ),
          ],
        ),
      ),
    );
  }
}
