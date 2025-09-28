import 'package:flutter/material.dart';
import 'package:funterest/app/services/notification_service.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:permission_handler/permission_handler.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: "Funterest",
      initialRoute: AppPages.INITIAL,
      defaultTransition: Transition.zoom,
      transitionDuration: Duration(seconds: 1),
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      initialBinding: BindingsBuilder(() async {
        await GetStorage.init();

        // Initialize NotificationService and schedule the notification
        PermissionStatus status = await Permission.notification.request();

        // Only initialize and schedule if permission is granted
        if (status.isGranted) {
          await NotificationService().init();
          await NotificationService().scheduleDailyReminderNotification();
        }
      }),
    ),
  );
}
