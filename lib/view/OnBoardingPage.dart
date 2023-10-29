import 'package:ecommerce_app/view/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/widget/onBoardingWidget.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/controller/onBoardingController.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPageView extends StatelessWidget {
  OnBoardingPageView({Key? key}) : super(key: key);

  // Define your controller here, I removed the final keyword
  final controller = Get.put(OnBoardingPageController());

  @override
  Widget build(BuildContext context) {
    OnBoardingContentList contentList = OnBoardingContentList();
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (value) {
                  controller.currentIndex.value = value;
                },
                itemCount: contentList.list_on_board.length,
                itemBuilder: (context, index) => OnBoardingContent(
                  image1: contentList.list_on_board[index].image1,
                  title: contentList.list_on_board[index].title,
                  description: contentList.list_on_board[index].description,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: secondaryColor),
                    onPressed: () {
                      if (controller.currentIndex.value > 0) {
                        // Handle navigation to the previous page here
                        controller.pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Back',
                        style: GoogleFonts.poppins(
                          color: primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, elevation: 0),
                    onPressed: () {
                      Get.to(LandingPage());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [linear1, linear2],
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 10,
                          bottom: 10,
                          right: 20,
                        ),
                        child: Text(
                          'Start',
                          style: GoogleFonts.poppins(
                            color: secondaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryColor),
                    onPressed: () {
                      controller.pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Next',
                        style: GoogleFonts.poppins(
                          color: primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
