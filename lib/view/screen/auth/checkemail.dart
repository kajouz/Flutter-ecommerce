import 'package:ecommerce1/controller/auth/checkemail_controller.dart';

import 'package:ecommerce1/core/constant/color.dart';
import 'package:ecommerce1/view/widget/auth/custombuttomauth.dart';

import 'package:ecommerce1/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce1/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce1/view/widget/auth/customtexttitleauth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Check Email',
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
            const CustomTextTitleAuth(text: "Success Sign Up"),
            const SizedBox(height: 10),
            const CustomTextBodyText(
                text:
                    "Please Enter your Email Address to Receive A Verification Code"),
            const SizedBox(height: 65),
            CustomTextFormAuth(
              isNumber: false,
              valid: (val) {},
              hinttext: "Enter Your Email",
              iconData: Icons.email_outlined,
              labeltext: "Email", mycontroller: controller.email,
              //mycontroller: ,
            ),
            CustomButtomAuth(
                text: "Check",
                onPressed: () {
                  controller.goToVerifyCode();
                }),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
