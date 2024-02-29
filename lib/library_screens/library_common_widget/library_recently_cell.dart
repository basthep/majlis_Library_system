import 'package:flutter/material.dart';

import '../library_common_widget/library_color_extenstion.dart';

class LibraryRecentlyCell extends StatelessWidget {
  final Map iObj;
  const LibraryRecentlyCell({super.key, required this.iObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        width: media.width * 0.32,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 2),
                        blurRadius: 5)
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  iObj["img"].toString(),
                  width: media.width * 0.32,
                  height: media.width * 0.50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              iObj["name"].toString(),
              maxLines: 3,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: LibraryTColor.text,
                  fontSize: 13,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              iObj["author"].toString(),
              maxLines: 1,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: LibraryTColor.subTitle,
                fontSize: 11,
              ),
            )
          ],
        ));
  }
}
