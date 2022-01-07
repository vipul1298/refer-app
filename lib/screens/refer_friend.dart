import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:referapp/components/font_icon.dart';
import 'package:referapp/components/text_refer.dart';
import 'package:referapp/controllers/auth_controller.dart';
import 'package:share_plus/share_plus.dart';

class ReferFriend extends StatelessWidget {
  const ReferFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Refferal Section!",
              style: GoogleFonts.ubuntu(
                  textStyle: const TextStyle(color: Colors.black))),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SizedBox(
          width: size.width * 0.95,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Obx(
                  () => Text("Hello ${AuthController.instance.userName},",
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Refer to,",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: IconButton(
                            onPressed: () {
                              //Todo
                              Share.share("Referral code");
                            },
                            icon: const Icon(
                              Icons.share,
                              size: 40,
                            )),
                      ),
                      Column(
                        children: [
                          Row(
                            children: const [
                              FontIcon(
                                icon: FontAwesomeIcons.facebook,
                                color: Colors.blue,
                              ),
                              FontIcon(
                                icon: FontAwesomeIcons.instagram,
                                color: Colors.red,
                              ),
                              FontIcon(
                                icon: FontAwesomeIcons.twitter,
                                color: Colors.blueAccent,
                              )
                            ],
                          ),
                          Row(
                            children: const [
                              FontIcon(
                                icon: FontAwesomeIcons.whatsapp,
                                color: Colors.green,
                              ),
                              FontIcon(
                                icon: Icons.mail,
                                color: Colors.redAccent,
                              ),
                              FontIcon(
                                icon: Icons.chat_bubble_rounded,
                                color: Colors.grey,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextRefer(text: "Hey, have you tried BHive.fund?"),
                    TextRefer(
                        text:
                            "I have been investing with them and thought you'd love it too!"),
                    SizedBox(height: 30),
                    TextRefer(
                        text:
                            "BHive.fund is one of the India's largest and fastest-growing investment platforms."),
                    SizedBox(
                      height: 30,
                    ),
                    TextRefer(
                        text:
                            "investing with them is fast & easy. Click on the link to start investing."),
                    SizedBox(
                      height: 30,
                    ),
                    TextRefer(text: "***link***"),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
