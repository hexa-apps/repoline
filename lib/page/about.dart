import 'package:flutter/material.dart';
import 'package:repoline/component/about_listtile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'repoline',
          style:
              TextStyle(fontFamily: 'SpaceMono', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      body: ListView(
        children: [
          AboutPageListTile(
              isTitle: true,
              icon: const Icon(Icons.title),
              content: Text(
                'app',
                style: TextStyle(
                    fontFamily: 'SpaceMono',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
          AboutPageListTile(
            isTitle: false,
            icon: Icon(
              Icons.share,
              color: Colors.green[600],
            ),
            onPressed: () async {
              try {
                await WcFlutterShare.share(
                    sharePopupTitle: 'Share',
                    text:
                        'Get awesome repository timeline app\nhttps://play.google.com/store/apps/details?id=com.hexaapps.repoline',
                    mimeType: 'text/plain');
              } catch (e) {
                print('Error: $e');
              }
            },
            content: Text(
              'share app',
              style: TextStyle(fontFamily: 'SpaceMono'),
            ),
          ),
          AboutPageListTile(
            isTitle: false,
            icon: Icon(
              Icons.star,
              color: Colors.yellow[800],
            ),
            onPressed: () async {
              await canLaunch(
                      'https://play.google.com/store/apps/details?id=com.hexaapps.repoline')
                  ? await launch(
                      'https://play.google.com/store/apps/details?id=com.hexaapps.repoline')
                  : throw 'Could not launch https://play.google.com/store/apps/details?id=com.hexaapps.repoline';
            },
            content:
                Text('rate app', style: TextStyle(fontFamily: 'SpaceMono')),
          ),
          AboutPageListTile(
              isTitle: true,
              icon: const Icon(Icons.title),
              content: Text(
                'support',
                style: TextStyle(
                    fontFamily: 'SpaceMono',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
          AboutPageListTile(
            isTitle: false,
            icon: Icon(
              Icons.email,
              color: Colors.blue[800],
            ),
            onPressed: () async {
              await canLaunch('mailto:hexagameapps@gmail.com?subject=Repoline')
                  ? await launch(
                      'mailto:hexagameapps@gmail.com?subject=Repoline')
                  : throw 'Could not launch mailto:hexagameapps@gmail.com?subject=Repoline';
            },
            content: Text('email', style: TextStyle(fontFamily: 'SpaceMono')),
          ),
          AboutPageListTile(
            isTitle: false,
            icon: Icon(
              Icons.flutter_dash,
              color: Colors.blue,
            ),
            onPressed: () async {
              await canLaunch('https://twitter.com/hexaapps')
                  ? await launch('https://twitter.com/hexaapps')
                  : throw 'Could not launch https://twitter.com/hexaapps';
            },
            content: Text('twitter', style: TextStyle(fontFamily: 'SpaceMono')),
          ),
          AboutPageListTile(
            isTitle: false,
            icon: Icon(
              Icons.photo_camera,
              color: Colors.purple,
            ),
            onPressed: () async {
              await canLaunch('https://instagram.com/hexaapps')
                  ? await launch('https://instagram.com/hexaapps')
                  : throw 'Could not launch https://instagram.com/hexaapps';
            },
            content:
                Text('instagram', style: TextStyle(fontFamily: 'SpaceMono')),
          ),
        ],
      ),
    );
  }
}
