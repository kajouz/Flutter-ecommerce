import 'package:ecommerce1/controller/auth/successresetpassword_controller.dart';
import 'package:ecommerce1/core/constant/color.dart';
import 'package:ecommerce1/view/widget/auth/custombuttomauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatefulWidget {
  const SuccessResetPassword({super.key});

  @override
  State<SuccessResetPassword> createState() => _SuccessResetPasswordState();
}

class _SuccessResetPasswordState extends State<SuccessResetPassword> {
  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        // ignore: deprecated_member_use
        title: Text('Success',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Icon(
              Icons.check_circle_outline,
              size: 200,
              color: AppColor.primaryColor,
            )),
            const Text("..."),
            const Text("..."),
            const Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtomAuth(
                  text: "Go To Login",
                  onPressed: () {
                    controller.goToPageLogin();
                  }),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
