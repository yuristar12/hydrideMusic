import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/components/calcitePlainButton/calcite_plain_button.dart';
import 'package:flutter_music/config/global_constant.dart';

class SongListPageHeaderDes extends StatefulWidget {
  SongListPageHeaderDes({super.key, required this.des});

  String des;

  @override
  State<SongListPageHeaderDes> createState() => _SongListPageHeaderDesState();
}

class _SongListPageHeaderDesState extends State<SongListPageHeaderDes>
    with SingleTickerProviderStateMixin {
  bool isOmit = true;

  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    super.initState();
  }

  void setOmit() {
    setState(() {
      isOmit = !isOmit;

      if (!isOmit) {
        animationController.forward(from: 0);
      }
    });
  }

  Widget buildFullContent() {
    return SizeTransition(
      sizeFactor: animationController,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                widget.des,
                style: const TextStyle(
                    fontFamily: globaSourceHanSansCNBold,
                    fontSize: 12,
                    color: Colors.black,
                    decoration: TextDecoration.none),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 120,
              child: CalcitePlainButton(
                  text: '收起',
                  size: buttonSize.min,
                  mode: buttonMode.deep,
                  onPressed: () {
                    setOmit();
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget buildOmtContent() {
    return SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Text(
              widget.des,
              maxLines: 1,
              style: const TextStyle(
                  fontFamily: globaSourceHanSansCNBold,
                  fontSize: 12,
                  color: Colors.black,
                  decoration: TextDecoration.none),
              overflow: TextOverflow.ellipsis,
            ),
            Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                  width: 120,
                  child: CalcitePlainButton(
                      text: '查看详情',
                      mode: buttonMode.deep,
                      size: buttonSize.min,
                      onPressed: () {
                        setOmit();
                      }),
                ))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return isOmit
        ? buildOmtContent()
        : Container(
            child: buildFullContent(),
          );
  }
}
