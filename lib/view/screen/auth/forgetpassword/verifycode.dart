import 'package:ecommerce1/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce1/controller/auth/signup_controller.dart';
import 'package:ecommerce1/controller/auth/verifycode_controller.dart';
import 'package:ecommerce1/core/constant/color.dart';
import 'package:ecommerce1/view/widget/auth/custombuttomauth.dart';
import 'package:ecommerce1/view/widget/auth/logoauth.dart';
import 'package:ecommerce1/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce1/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce1/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce1/view/widget/auth/testsignup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        // ignore: deprecated_member_use
        title: Text('Verification Code',
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
            const CustomTextTitleAuth(text: "Check Code"),
            const SizedBox(height: 10),
            const CustomTextBodyText(
                text: "Please Enter the Digit Code Sent To"),
            const SizedBox(height: 65),
            OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToResetPassword();
              }, // end onSubmit
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
