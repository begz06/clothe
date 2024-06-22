import 'package:clothe/assets/app_icons.dart';
import 'package:clothe/assets/app_images.dart';
import 'package:clothe/utils/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.logo,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      'Clothe',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: context.width * 0.7,
                    height: context.height * 0.06,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppIcons.facebook,
                        ),
                        SvgPicture.asset(AppIcons.apple),
                        SvgPicture.asset(AppIcons.google),
                        const Text(
                          'Continue with social media',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: context.height * 0.06,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 3,
                  )),
                  Text(
                    'Or',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                    endIndent: 20,
                    indent: 3,
                  ))
                ],
              ),
              SizedBox(
                height: context.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 42, right: 42),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Full name',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: context.height * 0.005,
                    ),
                    SizedBox(
                      height: context.height * 0.070,
                      child:  TextFormField(
                        controller: _nameController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Full name',
                          hintStyle: const  TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          prefixStyle:
                             const TextStyle(color: Colors.black, fontSize: 17),
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.025,
                    ),
                  const  Text(
                      'Email address or username',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: context.height * 0.005,
                    ),
                    SizedBox(
                      height: context.height * 0.070,
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Email address or username',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          prefixStyle:
                              const TextStyle(color: Colors.black, fontSize: 17),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.025,
                    ),
                    const Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: context.height * 0.005,
                    ),
                    SizedBox(
                      height: context.height * 0.070,
                      child: TextFormField(
                        controller: _passController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          prefixStyle:
                              const TextStyle(color: Colors.black, fontSize: 17),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.06,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('bosildi');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: context.height * 0.07,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFB800),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              const SizedBox(
                  //height: context.height * 0.001,
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Have an account? |',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                    onPressed: () {
                      print('text button bosildi');
                      Navigator.pushNamedAndRemoveUntil(
                          context, 'sign_in', (route) => false);
                    },
                    child: const Text('Log In',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFF7A00))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
