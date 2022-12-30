import 'package:flutter/material.dart';
import 'package:siakad/models/jadwal_model.dart';
import 'package:siakad/theme.dart';

class Jadwal extends StatelessWidget {
  final JadwalModel jadwal;
  Jadwal(this.jadwal);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
        elevation: 4,
        child: ListTile(
          leading: Text(
              jadwal.hari,
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
            ),
          ),
          title: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),
            child: Text(
              jadwal.mapel,
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
          ),
          subtitle: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(
              10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${jadwal.jamMulai} - ${jadwal.jamSelesai}',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}