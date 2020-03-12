import "dart:async";
import 'package:chopper/chopper.dart';

part "API.chopper.dart";

@ChopperApi(baseUrl: "/posts")
abstract class API extends ChopperService {
  static API create([ChopperClient client]) => _$API(client);

  @Get(path: "/{id}")
  Future<Response> getID(@Path('id') String id);

  @Get()
  Future<Response> getPosts();
}