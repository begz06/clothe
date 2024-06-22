import 'package:clothe/assets/app_icons.dart';
import 'package:clothe/assets/app_images.dart';
import 'package:clothe/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          AppIcons.facebook,
                        ),
                        SizedBox(
                          width: context.width * 0.04,
                        ),
                        const Text(
                          'Continue with Facebook',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.height * 0.008,
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          AppIcons.apple,
                        ),
                        SizedBox(
                          width: context.width * 0.04,
                        ),
                        const Text(
                          'Continue with Apple',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.height * 0.008,
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          AppIcons.google,
                        ),
                        SizedBox(
                          width: context.width * 0.04,
                        ),
                        const Text(
                          'Continue with Google',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.height * 0.035,
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
              height: context.height * 0.025,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 42, right: 42),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email address or username',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: context.height * 0.015,
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
                    height: context.height * 0.03,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: context.height * 0.015,
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
                    height: context.height * 0.01,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot your password',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            decorationThickness: 2,
                            decorationColor: Colors.grey,
                            color: Colors.grey),
                      )),
                  GestureDetector(
                    onTap: () {
                      print('bosildi');
                      Navigator.pushNamedAndRemoveUntil(
                          context, 'navbar', (route) => false);
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
                        'Log in',
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
                  'Not a member? |',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                TextButton(
                  onPressed: () {
                    print('text button bosildi');
                  },
                  child: const Text('Create an account',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFF7A00))),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
