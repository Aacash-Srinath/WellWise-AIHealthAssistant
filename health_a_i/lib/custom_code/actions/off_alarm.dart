// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'dart:io'; // For platform check
import 'package:alarm/alarm.dart';

Future<void> offAlarm(DateTime dateTime) async {
  try {
    // Initialize the alarm system if not already initialized
    await Alarm.init();

    // Define alarm settings
    final alarmSettings = AlarmSettings(
      id: 42, // Unique alarm ID
      dateTime: dateTime,
      assetAudioPath:
          'assets/alarm.mp3', // Ensure this is added in pubspec.yaml
      loopAudio: true,
      vibrate: true,
      volume: 0.8,
      fadeDuration: 3.0,
      warningNotificationOnKill: Platform.isIOS,
      androidFullScreenIntent: true,
      notificationSettings: const NotificationSettings(
        title: 'Alarm Notification',
        body: 'Your alarm is ringing!',
        stopButton: 'Stop Alarm',
        icon: 'notification_icon', // Replace with your custom notification icon
      ),
    );

    // Set the alarm with the specified settings
    Alarm.stop(42);

    print('Alarm set for: ${dateTime.toString()}');
  } catch (e) {
    print('Failed to set alarm: $e');
  }
}
