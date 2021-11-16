import 'package:url_launcher/url_launcher.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

void launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

void shareText(url) async {
  try {
    await WcFlutterShare.share(
        sharePopupTitle: 'Share',
        text: 'Get awesome repository timeline app\n$url',
        mimeType: 'text/plain');
  } catch (e) {
    print('Error: $e');
  }
}
