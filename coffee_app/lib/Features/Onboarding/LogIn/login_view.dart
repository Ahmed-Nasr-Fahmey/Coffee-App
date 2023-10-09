import 'package:coffee_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_text_form_field.dart';
import 'package:coffee_app/Core/Shared/Functions/functions.dart';
import 'package:coffee_app/Features/Onboarding/PhoneVerification/phone_verification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});
  static const String routeName = "LogInView";

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  String? otp1;
  String? otp2;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GlobalFunctions.unFocusTextFieldsWhenClickOutSide(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                  child: Image.asset(
                " Assets/images/Login.png",
                width: 120,
                height: 120,
              )),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 6),
                child: Text("Enter your phone number",
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF373E43))),
              ),
              Text("We will send you a verification code",
                  style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF373E43))),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormField(
                    
                      mywidth: 60,
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return 'Field is requierd';
                        }
                      }),
                  const SizedBox(width: 8),
                  CustomTextFormField(
                      mywidth: 250,
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return 'Field is requierd';
                        }
                      }),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                    "By clicking on ‘Continue”, you are agreeing to our Terms & Conditions.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF373E43))),
              ),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CustomMainButton(
                    text: "Continue",
                    onTap: () {
                      Navigator.pushNamed(context, PhoneVerification.routeName);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
