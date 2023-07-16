import '../models/servers.dart';
import '../models/user.dart';
import 'package:args/args.dart';

void createChannel(List<String> arguments) {
  var parser = ArgParser();
  parser.addOption(
    "channel",
    mandatory: true,
  );
  parser.addOption(
    "server",
    mandatory: true,
  );
  parser.addOption(
    "category",
    mandatory: false,
    defaultsTo: "text",
  );
  parser.addFlag(
    "create",
    abbr: "c",
    defaultsTo: false,
  );

  var results = parser.parse(arguments);
  if (results["create"] == true) {
    Channel channel = Channel();
    channel.createChannel(results);
  } else {
    print("Please read the docs!");
  }
}
