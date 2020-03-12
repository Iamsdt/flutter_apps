// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'API.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$API extends API {
  _$API([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = API;

  @override
  Future<Response<dynamic>> getID(String id) {
    final $url = '/posts/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getPosts() {
    final $url = '/posts';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
