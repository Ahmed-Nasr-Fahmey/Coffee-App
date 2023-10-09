import 'package:coffee_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_text_form_field.dart';
import 'package:coffee_app/Core/Shared/Functions/functions.dart';
import 'package:coffee_app/Core/Shared/widgets/social_media.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUS extends StatefulWidget {
  const ContactUS({super.key});
  static const String routeName = "ContactUS";

  @override
  State<ContactUS> createState() => _ContactUSState();
}

class _ContactUSState extends State<ContactUS> {
dynamic autovalidateMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GlobalFunctions.unFocusTextFieldsWhenClickOutSide(context);
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CustomAppBar(title: "Contact Us"),
            const SizedBox(
              height: 40,
            ),
            const SocialMedia(
              image: "Assets/images/twitter-fill.png",
              title: "Twitter",
            ),
            const SizedBox(
              height: 16,
            ),
            const SocialMedia(
              image: "Assets/images/whatsapp-icon.png",
              title: "Whatsapp",
            ),
            const SizedBox(
              height: 16,
            ),
            const SocialMedia(
              image: "Assets/images/instagram.png",
              title: "Instagram",
            ),
            const SizedBox(
              height: 66,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Send us a Direct message:",
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF373E43),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 30),
                    child: CustomTextFormField(
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Field is Required";
                        }
                        return null;
                      },
                      autovalidateMode:autovalidateMode,
                      mywidth: double.infinity,
                      maxLines: 5,
                    ),
                  ),
                  CustomMainButton(

                      radius: 16, width: 120, text: "Send", onTap: () {
                       
                        Navigator.pop(context);
                                              })
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
