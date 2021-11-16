import 'package:flutter/material.dart';
import 'package:repoline/component/about_listtile.dart';

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
      body: Container(
        margin: EdgeInsets.only(bottom: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 12,
              child: ListView(
                children: [
                  AboutPageListTile(
                      isTitle: true,
                      icon: const Icon(Icons.title),
                      isLaunch: false,
                      url: '',
                      content: 'app',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  AboutPageListTile(
                      isTitle: false,
                      icon: Icon(
                        Icons.share,
                        color: Colors.green[600],
                      ),
                      isLaunch: false,
                      url:
                          'https://play.google.com/store/apps/details?id=com.hexaapps.repoline',
                      content: 'share app',
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  AboutPageListTile(
                      isTitle: false,
                      icon: Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      isLaunch: true,
                      url:
                          'https://play.google.com/store/apps/details?id=com.hexaapps.repoline',
                      content: 'rate app',
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  AboutPageListTile(
                      isTitle: true,
                      icon: const Icon(Icons.title),
                      content: 'support',
                      isLaunch: true,
                      url:
                          'https://play.google.com/store/apps/details?id=com.hexaapps.repoline',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  AboutPageListTile(
                      isTitle: false,
                      icon: Icon(
                        Icons.email,
                        color: Colors.blue[800],
                      ),
                      isLaunch: true,
                      url: 'mailto:hexagameapps@gmail.com?subject=Repoline',
                      content: 'email',
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  AboutPageListTile(
                      isTitle: false,
                      icon: Icon(
                        Icons.flutter_dash,
                        color: Colors.blue,
                      ),
                      isLaunch: true,
                      url: 'https://twitter.com/hexaapps',
                      content: 'twitter',
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  AboutPageListTile(
                      isTitle: false,
                      icon: Icon(
                        Icons.photo_camera,
                        color: Colors.purple,
                      ),
                      isLaunch: true,
                      url: 'https://instagram.com/hexaapps',
                      content: 'instagram',
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  AboutPageListTile(
                      isTitle: true,
                      icon: const Icon(Icons.title),
                      content: 'more',
                      isLaunch: true,
                      url: 'https://twitter.com/hexaapps',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  AboutPageListTile(
                      isTitle: false,
                      icon: Icon(
                        Icons.raw_on,
                        color: Colors.indigo,
                      ),
                      isLaunch: true,
                      url: 'https://reposlib.vercel.app/',
                      content: 'original project',
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                'v0.0.1',
                style: TextStyle(
                    fontFamily: 'SpaceMono',
                    color: Colors.black45,
                    fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
