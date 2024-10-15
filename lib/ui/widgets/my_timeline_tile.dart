// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'my_end_tile.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  const MyTimelineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      beforeLineStyle: LineStyle(color: Color(0xff7F86FF)),
      indicatorStyle: IndicatorStyle(
        color: isFirst ? Color(0xff7F86FF) : Colors.white,
        iconStyle: IconStyle(
          iconData: Icons.trip_origin_outlined,
          fontSize: 20,
          color: isFirst ? Colors.white : Color(0xff7F86FF),
        ),
      ),
      endChild: MyEndTile(isFirst: isFirst),
    );
  }
}
