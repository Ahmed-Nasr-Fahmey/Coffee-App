import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_otp_text_form.dart';
import 'package:coffee_app/Core/Shared/Functions/functions.dart';
import 'package:coffee_app/Features/Home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});
  static const String routeName = "PhoneVerification";

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  String? otp1;
  String? otp2;
  String? otp3;
  String? otp0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GlobalFunctions.unFocusTextFieldsWhenClickOutSide(context),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: ConstColors.primarycolor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Text("Verify your mobile number",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ConstColors.primarycolor)),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Image.asset(
                  "assets/Phone.png",
                  width: 105,
                  height: 110,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text("Enter the verification code sent to you",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ConstColors.primarycolor)),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomOtpTextFormField(
                    onSaved: (p0) {
                      otp1 = p0;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: CustomOtpTextFormField(
                      onSaved: (p1) {
                        otp2 = p1;
                      },
                    ),
                  ),
                  CustomOtpTextFormField(
                    onSaved: (p2) {
                      otp2 = p2;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: CustomOtpTextFormField(
                      onSaved: (p3) {
                        otp3 = p3;
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 64, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Didn’t get the code? ",
                      style: GoogleFonts.nunito(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      )),
                  Text("Resend Code",
                      style: GoogleFonts.nunito(
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                        color: ConstColors.primarycolor,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomMainButton(text: "Continue", onTap: () {
               Navigator.pushNamed(context, HomeView.routeName);
              }),
            )
          ],
        ),
      ),
    );
  }
}
