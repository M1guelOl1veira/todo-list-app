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
  static GetItemByTodoListIdCall getItemByTodoListIdCall =
      GetItemByTodoListIdCall();
  static GetTodoListCall getTodoListCall = GetTodoListCall();
  static LoginCall loginCall = LoginCall();
  static GetItemByIdCall getItemByIdCall = GetItemByIdCall();
  static AddItemCall addItemCall = AddItemCall();
}

class GetItemByTodoListIdCall {
  Future<ApiCallResponse> call({
    int? todoListId,
  }) async {
    final baseUrl = TodoListApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Item By Todo List Id',
      apiUrl: '${baseUrl}/item/list/${todoListId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJqb2huZG9lIiwiZXhwIjoxNzgyMTIzMDc5fQ.Mn-fKGPdaKje12QHMj6EzNpHN06dFVU74CZBNjhbkkY',
      },
      params: {},
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

class GetTodoListCall {
  Future<ApiCallResponse> call({
    int? userId,
  }) async {
    final baseUrl = TodoListApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Todo List',
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

class LoginCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final baseUrl = TodoListApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Login',
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

class GetItemByIdCall {
  Future<ApiCallResponse> call({
    int? itemId,
  }) async {
    final baseUrl = TodoListApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Item By Id',
      apiUrl: '${baseUrl}/item/${itemId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJqb2huZG9lIiwiZXhwIjoxNzgyMTIzMDc5fQ.Mn-fKGPdaKje12QHMj6EzNpHN06dFVU74CZBNjhbkkY',
      },
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

class AddItemCall {
  Future<ApiCallResponse> call({
    int? todoListId,
    String? titulo = '',
    String? descricao = '',
    int? userId,
  }) async {
    final baseUrl = TodoListApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id": ${userId},
  "todo_list_id": ${todoListId},
  "titulo": "${escapeStringForJson(titulo)}",
  "descricao": "${escapeStringForJson(descricao)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Item',
      apiUrl: '${baseUrl}/item/add',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJqb2huZG9lIiwiZXhwIjoxNzgyMTIzMDc5fQ.Mn-fKGPdaKje12QHMj6EzNpHN06dFVU74CZBNjhbkkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
