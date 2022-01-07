import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:referapp/components/text_home.dart';
import 'package:referapp/controllers/auth_controller.dart';
import 'package:referapp/screens/refer_friend.dart';
import 'package:referapp/screens/referral_dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    getUserName();
    super.initState();
  }

  getUserName() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    AuthController.instance.userName.value =
        sharedPreferences.getString("name") ?? "";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Refferal Section",
            style: GoogleFonts.ubuntu(
                textStyle: const TextStyle(color: Colors.black)),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            DropdownButton(
                underline: Container(),
                icon: const Icon(Icons.more_vert),
                items: [
                  DropdownMenuItem(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.exit_to_app,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Logout')
                      ],
                    ),
                    value: 'logout',
                  )
                ],
                onChanged: (itemIdentifier) async {
                  if (itemIdentifier == 'logout') {
                    AuthController.instance.signOut();
                  }
                })
          ],
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              const TextHome(
                text: "Why don't you introduce us to your friends?",
              ),
              const SizedBox(
                height: 10,
              ),
              const TextHome(
                text:
                    "Invite a friend to invest on BHive,fund and get a cashback equal to 1% of their investment.",
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: InkWell(
                  onTap: () => Get.to(() => const ReferFriend()),
                  child: Container(
                    height: 70,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(16)),
                    child: const Center(
                      child: Text(
                        "Refer a Friend!",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: InkWell(
                  onTap: () => Get.to(() => const ReferralDashboard()),
                  child: Container(
                    height: 70,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(16)),
                    child: const Center(
                      child: Text(
                        "Referral Dashboard",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
