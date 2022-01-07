import 'package:flutter/material.dart';

class TableItem extends StatelessWidget {
  final String? name;
  final String? rewardStatus;
  final String? investmentStatus;

  const TableItem(
      {Key? key, this.name, this.rewardStatus, this.investmentStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              name ?? "",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              rewardStatus ?? "",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              investmentStatus ?? "",
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const Divider(
          thickness: 1,
          color: Colors.grey,
        )
      ],
    );
  }
}
