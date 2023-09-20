import 'package:ecommerce1/controller/onboarding_controller.dart';
import 'package:ecommerce1/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce1/view/widget/onboarding/cutomslider.dart';
import 'package:ecommerce1/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotControllerOnBoarding(),
                  Spacer(flex: 2),
                  CustomButtonOnBoarding()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
