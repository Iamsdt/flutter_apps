import 'package:Chopper/api/API.dart';
import 'package:chopper/chopper.dart';

class MyChopper {
  API getApi() {
    final chopper = ChopperClient(
      baseUrl: "https://jsonplaceholder.typicode.com",
      services: [
        // the generated service
        API.create()
      ],
      converter: JsonConverter(),
    );

    return API.create(chopper);
  }
}
