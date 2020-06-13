import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/health_input_form.dart';
import './screens/filter_screen.dart';
import './screens/home_page.dart';
import './screens/food_info.dart';
import './providers/products.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
//testing
import './providers/data_helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    FlutterStatusbarcolor.setNavigationBarColor(Colors.black);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserInput>(builder: (context) => UserInput()),
        ChangeNotifierProvider<Products>(builder: (context) => Products()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          fontFamily: 'Montserrat',
        ),
        home: HomePage(),
        //Setting route for pages here
        routes: {
          'HomePage': (context) => HomePage(),
          'FilterScreen': (context) => FilterScreen(),
          'HealthInputScreen': (context) => Wrapper(),
          'FoodInfoScreen': (context) => FoodInfo(),
          // 'ScanScreen': (context) => ScanScreen(),
          // 'HealthInput': (context) => InputText().
        },
      ),
    );
  }
}
