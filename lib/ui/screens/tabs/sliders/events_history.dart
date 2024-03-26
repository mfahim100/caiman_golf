import 'package:caiman_golf/ui/widgets/custom_history_event_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class EventsHistory extends StatelessWidget {
  const EventsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 100.w,
      child: Column(
        children: [
          SizedBox(height: 2.h,),

          SizedBox(
            height: 62.h,
            child: ListView.builder(
                itemCount: 07,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const CustomHistoryEventController(
                        name: 'Muhammad Fahim',
                        time: 'Yesterday 12:34 P.M',
                        youOrFriend: 'You',
                        winOrLose: 'Win',
                        pointsObtained: '321',
                        duration: '2h',),
                      SizedBox(height: 1.h,)
                    ],
                  );
                }),

          )

        ],
      ),
    );
  }
}
