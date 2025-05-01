import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start TodoListApi Group Code

class TodoListApiGroup {
  static String getBaseUrl() =>
      'https://0b8f-2804-d41-d54f-6800-44c-5bc4-93a1-99f0.ngrok-free.app';
  static Map<String, String> headers = {};
  static FisrtFirstGetCall fisrtFirstGetCall = FisrtFirstGetCall();
  static ItemsByTodoListIdItemListTodoListIdPostCall
      itemsByTodoListIdItemListTodoListIdPostCall =
      ItemsByTodoListIdItemListTodoListIdPostCall();
  static GetTodoListsTodoListListPostCall getTodoListsTodoListListPostCall =
      GetTodoListsTodoListListPostCall();
  static LoginForAccessTokenLoginPostCall loginForAccessTokenLoginPostCall =
      LoginForAccessTokenLoginPostCall();
}

class FisrtFirstGetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TodoListApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'fisrt_first__get',
      apiUrl: '${baseUrl}/first/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemsByTodoListIdItemListTodoListIdPostCall {
  Future<ApiCallResponse> call({
    int? todoListId,
  }) async {
    final baseUrl = TodoListApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'items_by_todo_list_id_item_list__todo_list_id__post',
      apiUrl: '${baseUrl}/item/list/${todoListId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJqb2huZG9lIiwiZXhwIjoxNzQ2MTE1MDA3fQ.E2tw60O6YZhZxpjcyep5-OJEneQczNORywlf7YPeHak',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? titulos(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetTodoListsTodoListListPostCall {
  Future<ApiCallResponse> call({
    int? userId,
  }) async {
    final baseUrl = TodoListApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_todo_lists_todo_list_list_post',
      apiUrl: '${baseUrl}/todo-list/list/${userId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? todoListTitulos(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LoginForAccessTokenLoginPostCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final baseUrl = TodoListApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'login_for_access_token_login_post',
      apiUrl: '${baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? todoListTitulo(dynamic response) => (getJsonField(
        response,
        r'''$.todo_list[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? todoListItemTitulo(dynamic response) => (getJsonField(
        response,
        r'''$.todo_list[:].item[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? todoListItemConcluido(dynamic response) => (getJsonField(
        response,
        r'''$.todo_list[:].item[:].concluido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? todoListItemDescricao(dynamic response) => (getJsonField(
        response,
        r'''$.todo_list[:].item[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? todoListItems(dynamic response) => getJsonField(
        response,
        r'''$.todo_list[:].item''',
        true,
      ) as List?;
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  List? todoList(dynamic response) => getJsonField(
        response,
        r'''$.todo_list''',
        true,
      ) as List?;
}

/// End TodoListApi Group Code

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
