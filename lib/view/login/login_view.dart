import 'package:flutter/material.dart';
import 'package:ui_login/product/padding/padding_all.dart';
import 'package:ui_login/product/padding/padding_only.dart';
import 'package:ui_login/product/padding/padding_symmetric.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final String loginTitle = "Giriş Yap";
  final String description = "Devam etmek için giriş yapınız!";
  final String textFieldName = "Kullanıcı Adı veya telefon";
  final String textFieldPassword = "Şifre ";
  final String forgotPassword = "Şifremi unuttum!";
  final String veya = "Veya";
  final String googleText = "Google ile giriş yap";
  final String loginImagePath = "assets/images/png/ic_login.png";
  final String googleImagePath = "assets/images/png/ic_google.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const PagePaddingAll.normal(),
          child: Column(
            children: [
              Text(
                loginTitle,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.black87),
              ),
              Container(
                padding: const PagePaddingOnly.onlyBottomNormal(),
              ),
              Text(
                description,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.grey),
              ),
              Image.asset(
                loginImagePath,
                height: 170,
              ),
              Container(
                padding: const PagePaddingOnly.onlyBottomNormal(),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelText: textFieldName),
                obscureText: false,
              ),
              Container(
                padding: const PagePaddingOnly.onlyBottomNormal(),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelText: textFieldPassword),
                obscureText: true,
              ),
              Container(
                padding: const PagePaddingOnly.onlyBottomNormal(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(forgotPassword,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(color: Colors.grey))),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffed1f21),
                ),
                onPressed: () {},
                child: Center(
                    child: Text(
                  loginTitle,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.white, fontSize: 22),
                )),
              ),
              Container(
                padding: const PagePaddingOnly.onlyBottomNormal(),
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      height: 20,
                      thickness: 2,
                      indent: 0,
                      endIndent: 0,
                    ),
                  ),
                  Padding(
                    padding: PagePaddingSymmetric.symmetricNormal(),
                    child: Text(veya,
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                  const Expanded(
                    child: Divider(
                      height: 20,
                      thickness: 2,
                      indent: 0,
                      endIndent: 0,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const PagePaddingOnly.onlyBottomNormal(),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, elevation: 0),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      googleImagePath,
                      height: 35,
                      width: 35,
                    ),
                    Text(googleText,
                        style: Theme.of(context).textTheme.bodyText1),
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
