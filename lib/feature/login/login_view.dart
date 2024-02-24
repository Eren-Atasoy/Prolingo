// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:kartal/kartal.dart';
import 'package:prolingo_app/feature/login/login_provider.dart';
import 'package:prolingo_app/product/constants/color_constants.dart';
import 'package:prolingo_app/product/enums/image_constants.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final loginProvider = StateNotifierProvider<LoginProvider, int>((ref) {
    return LoginProvider();
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              //Resim logo
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: IconConstants.worldIcon.toImage,
                ),
              ),

              //Form arkaplanı
              Container(
                margin: const EdgeInsets.only(top: 50),
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                height: 650,
                decoration: const BoxDecoration(
                  color: ColorConstants.primaryBackgroundColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                ),

                //Form elemanları
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.email_outlined),
                        focusedBorder: OutlineInputBorder(
                          //üstüne tıklayınca gelen border rengi
                          borderSide: BorderSide(color: Color.fromARGB(255, 29, 0, 123)),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelText: 'e-mail',
                        labelStyle: TextStyle(
                          color: ColorConstants.primaryTextColor,
                        ),
                        hintText: 'e-mail giriniz',
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      //  initialValue: "erenatasoy@gmail.com",
                      obscureText: true,

                      decoration: const InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.remove_red_eye),
                        focusedBorder: OutlineInputBorder(
                          //üstüne tıklayınca gelen border rengi
                          borderSide: BorderSide(color: Color.fromARGB(255, 29, 0, 123)),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: ColorConstants.primaryTextColor,
                        ),
                        hintText: ' şifre giriniz',
                      ),
                    ),
                    //Giriş yap butonu
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: ElevatedButton(
                        autofocus: true,
                        onPressed: () {},
                        style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(300, 60)),
                          backgroundColor: MaterialStatePropertyAll(ColorConstants.primaryColor),
                        ),
                        child: const Text(
                          'Giriş yap',
                        ),
                      ),
                    ),
                    //Şifremi unuttum butonu
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password ?',
                        style: TextStyle(color: ColorConstants.white),
                      ),
                    ),
                    const Divider(
                      color: ColorConstants.primaryColorLight,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            child: Text(
                              "Don't you have any account?",
                              style: TextStyle(color: ColorConstants.white),
                            ),
                          ),
                          //Register sayfasına gitme butonu
                          TextButton(onPressed: () {}, child: const Text('Register')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
