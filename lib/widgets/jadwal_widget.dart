import 'package:flutter/material.dart';
import 'package:siakad/theme.dart';

class Jadwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
        elevation: 4,
        child: ListTile(
          title: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),
            child: Text(
              '07.00 - 09.00',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
          ),
          subtitle: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              'Matematika',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}