import 'package:flutter/material.dart';

import '../../../resource/constant.dart';

class WidgetIntroduce extends StatefulWidget {
  List<dynamic> list;
  int currentSlideIntro;
  WidgetIntroduce(
      {Key? key, required this.list, required this.currentSlideIntro})
      : super(key: key);
  @override
  _WidgetIntroduceState createState() => _WidgetIntroduceState();
}

class _WidgetIntroduceState extends State<WidgetIntroduce> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        onPageChanged: ((value) => setState(
              () {
                widget.currentSlideIntro = value;
              },
            )),
        scrollDirection: Axis.horizontal,
        itemCount: widget.list.length,
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/${widget.list[index]}',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: List.generate(
                      widget.list.length,
                      (index) {
                        return AnimatedContainer(
                          duration: animationDuration,
                          margin: const EdgeInsets.only(top: 150, right: 10),
                          width: 13,
                          height: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: widget.currentSlideIntro == index
                                ? Colors.white
                                : Colors.grey.withOpacity(0.5),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
