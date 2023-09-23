import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/constant/app_colors.dart';
import 'package:fast_app_base/screen/notification/d_notification.dart';
import 'package:fast_app_base/screen/notification/notification_dummy.dart';
import 'package:fast_app_base/screen/notification/w_notification.dart';
import 'package:flutter/material.dart';

class TtossNotificationScreen extends StatefulWidget {
  const TtossNotificationScreen({super.key});

  @override
  State<TtossNotificationScreen> createState() => _TtossNotificationState();
}

class _TtossNotificationState extends State<TtossNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryDarkGrey,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("알림"),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => NotificationItemWidget(
                notification: notificationDumies[index],
                onTap: () {
                  NotificationDialog(
                    [notificationDumies[0], notificationDumies[1]]
                  ).show();
                }),
            childCount: notificationDumies.length,
          )),
        ],
      ),
    );
  }
}
