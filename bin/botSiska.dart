// Username telegram bot @SiskaV1_Bot

import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

void main() {
  var teledart = TeleDart(
      Telegram('1910138470:AAHLaQ15pgIqUmmm61C5hE7j7GO1jTVsVNU'), Event());

  teledart.start().then((me) => print('${me.username} is initialised'));

  teledart
      .onCommand('hello')
      .listen(((message) => teledart.replyMessage(message, 'world')));
  teledart
      .onCommand('dart')
      .listen(((message) => teledart.replyMessage(message, 'Flutter')));
}
