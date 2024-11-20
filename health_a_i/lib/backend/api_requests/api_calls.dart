import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetExercisesCall {
  static Future<ApiCallResponse> call({
    String? bodyPart = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getExercises',
      apiUrl:
          'https://exercisedb.p.rapidapi.com/exercises/bodyPart/$bodyPart',
      callType: ApiCallType.GET,
      headers: {
        'x-rapidapi-key': 'c99d49cbc6msh2dde27ae3a78517p108679jsn2ae9de541297',
        'x-rapidapi-host': 'exercisedb.p.rapidapi.com',
      },
      params: {
        'limit': 5,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? exerciseDetails(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class MealPlanAPICall {
  static Future<ApiCallResponse> call({
    String? tags = 'none',
    int? number = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'mealPlanAPI',
      apiUrl:
          'https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/random',
      callType: ApiCallType.GET,
      headers: {
        'x-rapidapi-key': 'c99d49cbc6msh2dde27ae3a78517p108679jsn2ae9de541297',
        'x-rapidapi-host':
            'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? dishName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.recipes[:].title''',
      ));
  static String? dishSummary(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.recipes[:].summary''',
      ));
  static List<String>? dishIngredients(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].extendedIngredients[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static int? dishTime(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.recipes[:].readyInMinutes''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
