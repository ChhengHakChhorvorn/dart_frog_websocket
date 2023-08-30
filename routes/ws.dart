import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';
import 'package:my_project/bloc/counter_cubit.dart';

Future<Response> onRequest(RequestContext context) async {
  final handler = webSocketHandler(
    (channel, protocol) {
      // * A new client has connected to our server.
      // * Subscribe the new client to receive notifications
      // * whenever the cubit state changes.
      final cubit = context.read<CounterDataSource>()..subscribe(channel);
      // * Send the current count to the new client.
      channel.sink.add('${cubit.state}');
      // * Listen for messages from the client.
      channel.stream.listen(
        (event) {
          switch (event) {
            // * Handle an increment message.
            case 'increment':
              cubit.increment();
              print('${cubit.state}');
              break;
            // * Handle a decrement message.
            case 'decrement':
              cubit.decrement();
              print('${cubit.state}');
              break;
            // * Ignore any other messages.
            default:
              break;
          }
        },
        // * The client has disconnected so unsubscribe the channel.
        onDone: () => cubit.unsubscribe(channel),
      );
    },
  );
  return handler(context);
}
