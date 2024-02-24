// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';
import 'package:prolingo_app/feature/login/login_view.dart';
import 'package:prolingo_app/feature/register/register_provider.dart';

import 'package:prolingo_app/product/constants/index.dart';
import 'package:prolingo_app/product/enums/index.dart';

class RegisterView extends ConsumerStatefulWidget {
  const RegisterView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends ConsumerState<RegisterView> {
  final registerProvider = StateNotifierProvider<RegisterProvider, int>((ref) {
    return RegisterProvider();
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: () {
          context.route.navigateToPage(const LoginView());
        },
        icon: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
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
                height: 590,
                decoration: const BoxDecoration(
                  color: ColorConstants.primaryBackgroundColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                ),

                //Form elemanları
                child: Column(
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.person),
                        focusedBorder: OutlineInputBorder(
                          //üstüne tıklayınca gelen border rengi
                          borderSide: BorderSide(color: Color.fromARGB(255, 29, 0, 123)),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelText: 'Full Name',
                        labelStyle: TextStyle(
                          color: ColorConstants.primaryTextColor,
                        ),
                        hintText: 'Kullanıcı Adı giriniz.',
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
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
                      textInputAction: TextInputAction.next,
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
                        labelText: ' Password',
                        labelStyle: TextStyle(
                          color: ColorConstants.primaryTextColor,
                        ),
                        hintText: '  şifre giriniz',
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
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                          color: ColorConstants.primaryTextColor,
                        ),
                        hintText: ' tekrar şifre giriniz',
                      ),
                    ),
                    //Kayıt ol butonu
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: ElevatedButton(
                        autofocus: true,
                        onPressed: () {},
                        style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(300, 60)),
                          backgroundColor: MaterialStatePropertyAll(ColorConstants.primaryColor),
                        ),
                        child: const Text(
                          'Kayıt ol',
                          style:
                              TextStyle(color: ColorConstants.primaryTextColor, fontSize: 20, fontFamily: 'bebasNeue'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    const Divider(
                      color: ColorConstants.primaryColorLight,
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
