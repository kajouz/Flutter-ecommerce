import 'package:ecommerce1/controller/onboarding_controller.dart';
import 'package:ecommerce1/core/constant/color.dart';
import 'package:ecommerce1/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
          ),
          const SizedBox(height: 80),
          Image.asset(
            onBoardingList[i].image!,
            width: 200,
            height: 230,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 80),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  height: 2,
                  color: AppColor.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
