import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation_drawer_example/widget/navigation_drawer_widget.dart';
import 'package:analog_clock/analog_clock.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        // endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Center(
          child: AnalogClock(
            decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: Colors.black),
                color: Colors.black,
                shape: BoxShape.circle),
            width: 200.0,
            isLive: true,
            hourHandColor: Colors.white,
            minuteHandColor: Colors.white,
            showSecondHand: true,
            numberColor: Colors.white,
            showNumbers: true,
            textScaleFactor: 1.5,
            showTicks: true,
            showDigitalClock: true,
            digitalClockColor: Colors.white,
            datetime: DateTime(2022, 8, 4, 9, 11, 0),
          ),
        ),
      );
}
