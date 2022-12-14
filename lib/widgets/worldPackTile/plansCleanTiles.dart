import 'package:flutter/material.dart';
import '../../common/theme/colors.dart';
import '../../common/theme/text.dart';

class PlansCleanTiles extends StatefulWidget {
  final String title;
  final String desc;
  final bool isBestValue;

  const PlansCleanTiles(this.title, this.desc,
      {this.isBestValue = false, Key? key})
      : super(key: key);

  @override
  State<PlansCleanTiles> createState() => _PlansCleanTilesState();
}

class _PlansCleanTilesState extends State<PlansCleanTiles> {
  Color unSelectedColor = kEmptyColor;
  Color selectedColor = Colors.white;
  List<bool> isPlanSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    print('selectedContainers $isPlanSelected');

    return Column(
      children: [
        InkWell(
          onTap: () => setState(() {
            isPlanSelected[0] = true;
            isPlanSelected[1] = false;
            isPlanSelected[2] = false;
          }),
          child: planCleanTile(
              title: 'Basic',
              desc: 'Free forever',
              selectedColor:
                  isPlanSelected[0] ? selectedColor : unSelectedColor),
        ),
        InkWell(
          onTap: () => setState(() {
            isPlanSelected[0] = false;
            isPlanSelected[1] = true;
            isPlanSelected[2] = false;
          }),
          child: planCleanTile(
              title: 'Standard',
              desc: '4 months • 11.99\$ (2.99\$ per month)',
              bestValue: true,
              selectedColor:
                  isPlanSelected[1] ? selectedColor : unSelectedColor),
        ),
        InkWell(
          onTap: () => setState(() {
            isPlanSelected[0] = false;
            isPlanSelected[1] = false;
            isPlanSelected[2] = true;
          }),
          child: planCleanTile(
              title: 'Extended',
              desc: '6 months • 23.99\$ (3.99\$ per month)',
              selectedColor:
                  isPlanSelected[2] ? selectedColor : unSelectedColor),
        ),
      ],
    );
  }

  Widget planCleanTile({
    required String title,
    required String desc,
    required Color selectedColor,
    bool bestValue = false,
  }) {
    print('planCleanTile Rebuilt');

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // <-- Radius
          side: BorderSide(color: selectedColor, width: 1.5)),
      color: kTapBorderAssets,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        dense: true,
        title: Text(
          title,
          style: poppinsRegular().copyWith(fontSize: 13),
        ),
        subtitle: Text(
          desc,
          style:
              poppinsRegular().copyWith(fontSize: 10, color: kDetailedWhite60),
        ),
        trailing: bestValue
            ? Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    child: Container(
                      decoration:
                           BoxDecoration(gradient: positiveBlueButtonGradient),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      child: Text('BEST VALUE',
                          style: poppinsRegular().copyWith(
                            fontSize: 10,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              )
            : null,
      ),
    );
  }
}
