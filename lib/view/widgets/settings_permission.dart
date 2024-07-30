import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_app_settings/open_app_settings.dart';

void showPermissionDialog() {
  if (Get.isDialogOpen != true) {
    Get.dialog(
      AlertDialog(
        title: const Text('Permission Required'),
        content: const Text(
            'Location permission is required to use this feature. Please go to app settings and enable location permission.'),
        actions: [
          TextButton(
            onPressed: () {
              OpenAppSettings.openAppSettings();
              Get.back();
            },
            child: const Text('Open Settings'),
          ),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Cancel'),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}
