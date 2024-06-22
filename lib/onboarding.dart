import 'package:clothe/assets/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.pushNamedAndRemoveUntil(
            context, 'sign_up', (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    double screenHeight = size.height;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          AppImages.onboard,
          height: screenHeight * 0.6,
          
          //height: ScreenUtil().setHeight(400)
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text(
                'Let your\nStyle Speak',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: screenHeight * 0.03,),
             const Text('Discover the latest trends in women\nfashion and explore your personality',
              style: TextStyle( fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff8399A9)),
              
              )
            ],
          ),
        )
      ],
    ));
  }
}
