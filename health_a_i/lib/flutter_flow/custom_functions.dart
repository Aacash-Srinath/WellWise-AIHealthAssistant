import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

double calculateBMI(
  double weightVal,
  double heightVal,
) {
  return (weightVal / (heightVal * heightVal * 0.0001));
}

String convertUppercase(String input) {
  List<String> words = input.split(' ');
  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    if (word.isNotEmpty) {
      words[i] = word[0].toUpperCase() + word.substring(1);
    }
  }
  return words.join(' ');
}

String listToString(List<String> listInput) {
  String result = listInput.join('\n');
  return result;
}

String convertLowercase(String input) {
  List<String> words = input.split(' ');
  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    if (word.isNotEmpty) {
      words[i] = word[0].toLowerCase() + word.substring(1);
    }
  }
  return words.join(' ');
}
