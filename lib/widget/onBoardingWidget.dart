import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//On Boarding Content
class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.image1,
    // required this.image2,
    required this.title,
    required this.description,
  });

  final String image1, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image1,
          width: 360,
        ),
        Spacer(),
        // SvgPicture.asset(
        //     image2,
        //     width: 230,
        //     )
        Spacer(),

        //Title
        Container(
          width: 260,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Headers(color: Colors.white),
          ),
        ),
        //Desc
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SizedBox(
            width: 290,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: Paragraph(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}

//List On Boarding Content
class OnBoardingContentList {
  final List<OnBoardingContent> list_on_board = [
    OnBoardingContent(
      image1: Access,
      // image2: "assets/icons/Icon1.svg",
      title: "Easy Access",
      description:
          "We provide easy access a wide selection of products for our customer to browse",
    ),
    OnBoardingContent(
        image1: Trade,
        // image2: "assets/icons/Icon2.svg",
        title: "Simple transaction",
        description:
            "list payment plans to choose from Mastercard to other mobile app transaction"),
    OnBoardingContent(
        image1: Prot,
        // image2: "assets/icons/Icon3.svg",
        title: "Best warranty protection",
        description:
            "We provide customer purchases with the best protection for their items"),
  ];
}
