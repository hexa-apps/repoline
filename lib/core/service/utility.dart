import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

void shareText(url) async {
  try {
    await Share.share(
      'Get awesome repository timeline app\n$url',
      subject: 'Share',
    );
  } catch (e) {
    print('Error: $e');
  }
}
