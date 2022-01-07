import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:referapp/components/table_item.dart';
import 'package:referapp/components/text_dashboard.dart';

class ReferralDashboard extends StatelessWidget {
  const ReferralDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Referral Dashboard",
          style: GoogleFonts.ubuntu(
              textStyle: const TextStyle(color: Colors.black)),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Your Rewards",
                  style: GoogleFonts.ubuntu(
                      textStyle: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold))),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Total Cash Earned!",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "######",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: FaIcon(
                    FontAwesomeIcons.medal,
                    size: 50,
                    color: Colors.amber,
                  ),
                )
              ],
            ),
            const Divider(thickness: 1, color: Colors.grey),
            const Text(
              "View Payment History >",
              style: TextStyle(fontSize: 17),
            ),
            const Divider(thickness: 1, color: Colors.grey),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Your Referrals",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.amber),
                    child: const Center(
                      child: Text("Remind All Pendings"),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const TableItem(
                name: "Name",
                rewardStatus: "Reward Status",
                investmentStatus: "Investment Status"),
            const TableItem(
                name: "Likith S",
                rewardStatus: "10000",
                investmentStatus: "RBF-Myntra"),
            const TableItem(),
            const TableItem(),
            const TableItem(),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                "FAQ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextDashboard(
                text: "What are the incentives for referring a friend?"),
            const SizedBox(
              height: 30,
            ),
            const TextDashboard(
                text:
                    "Is there any eligibility criteria for me to send out invites?"),
            const SizedBox(
              height: 30,
            ),
            const TextDashboard(text: "When will i get my refferal bonus?"),
            const SizedBox(
              height: 30,
            ),
            const TextDashboard(text: "When will i receive the bonus?"),
          ],
        ),
      ),
    );
  }
}
