import 'package:ecommerce1/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce1/controller/auth/signup_controller.dart';
import 'package:ecommerce1/core/constant/color.dart';
import 'package:ecommerce1/view/widget/auth/custombuttomauth.dart';
import 'package:ecommerce1/view/widget/auth/logoauth.dart';
import 'package:ecommerce1/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce1/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce1/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce1/view/widget/auth/testsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        // ignore: deprecated_member_use
        title: Text('Forget Password',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const CustomTextTitleAuth(text: "Check Email"),
            const SizedBox(height: 10),
            const CustomTextBodyText(
                text:
                    "Sign In With Your Email And Password Or Continue With Social Media"),
            const SizedBox(height: 65),
            CustomTextFormAuth(
              hinttext: "Enter Your Email",
              iconData: Icons.email_outlined,
              labeltext: "Email", mycontroller: controller.email,
              //mycontroller: ,
            ),
            CustomButtomAuth(
              text: "Check",
              onPressed: () {},
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
