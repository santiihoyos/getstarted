import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';
import 'bookings/bookings_endpoints.dart';

const serverUrl = "localhost";
const serverPort = 7890;

///EntryPoint of Barber book backend
void main(List<String> arguments) async {
  final router = Router()..addBookingEndpoints();
  var server = await shelf_io.serve(router, serverUrl, serverPort)
    ..autoCompress = true
    ..sessionTimeout = Duration(seconds: 30).inMilliseconds;

  print('Barber book server serving at ${server.address.host}:${server.port}');
}

