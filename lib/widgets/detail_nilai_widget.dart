import 'package:flutter/material.dart';
import 'package:siakad/models/nilai_model.dart';
import 'package:siakad/theme.dart';

class DetailNilai extends StatelessWidget {
  final NilaiModel nilai;
  DetailNilai(this.nilai);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: EdgeInsets.only(top: 12),
    //   padding: EdgeInsets.symmetric(
    //     vertical: 20,
    //     horizontal: 12,
    //   ),
    //   decoration: BoxDecoration(
    //     color: backgroundColor4,
    //     borderRadius: BorderRadius.circular(12),
    //   ),
    //   child: Row(
    //     children: [
    //       Expanded(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             SizedBox(
    //               width: 12,
    //             ),
    //             Text(
    //               nilai.mapel,
    //               style: blackTextStyle.copyWith(
    //                 fontWeight: medium,
    //               ),
    //               overflow: TextOverflow.ellipsis,
    //             ),
    //           ],
    //         ),
    //       ),
    //       Text(
    //         '${nilai.tugas}',
    //         style: blackTextStyle.copyWith(
    //           fontSize: 12,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
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
              nilai.mapel,
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: bold,
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
                  'Tugas = ${nilai.tugas}, '
                  'Rata UH = ${nilai.rataUh}, '
                  'UTS = ${nilai.uts}, '
                  'UAS = ${nilai.uas}',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
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