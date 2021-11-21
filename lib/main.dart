import 'package:flutter/material.dart';
import 'package:video_ii_example/page/basics_page.dart';
import 'package:video_ii_example/page/orientation_page.dart';

//你手机里的图片地址
final urlLandscapeVideo =
    '/data/user/0/com.example.video_ii_example/cache/file_picker/xg_0_20211121113703.mp4';
final urlPortraitVideo =
    'https://www.bilibili.com/video/BV1x34y1Z7ze?share_source=copy_web';
final urlYoutubeVideo = 'https://www.w3school.com.cn/example/html5/mov_bbb.mp4';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Video Player',
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
          scaffoldBackgroundColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: ColorScheme.dark(),
        ),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: buildBottomBar(),
        body: buildPages(),
      );

  Widget buildBottomBar() {
    final style = TextStyle(color: Colors.white);

    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Text('VideoPlayer', style: style),
          label: '基础',
        ),
        BottomNavigationBarItem(
          icon: Text('VideoPlayer', style: style),
          label: '方向',
        ),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return BasicsPage();
      case 1:
        return OrientationPage();
      default:
        return Container();
    }
  }
}
