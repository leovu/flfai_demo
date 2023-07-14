import 'dart:convert';
import 'package:fair/fair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fair_demo/common/theme.dart';
import 'package:flutter_fair_demo/plugins/basic_plugin/fair_basic_plugin.dart';
import 'package:flutter_fair_demo/plugins/basic_plugin/http_interaction_plugin.dart';
import 'package:flutter_fair_demo/presentation/modules/splash/src/delegate/splash_delegate.dart';
import 'package:flutter_fair_demo/presentation/widgets/custom_button.dart';
import 'package:flutter_fair_demo/presentation/modules/login/src/delegate/login_delegate.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'src/generated.fair.dart' as g;
// import 'dart:io' as io;
@FairBinding(packages: [
  'package:flutter_fair_demo/presentation/widgets/custom_button.dart',
  'package:flutter_fair_demo/presentation/widgets/custom_text_field.dart',
  'package:flutter_fair_demo/presentation/widgets/custom_scaffold.dart',
  'package:flutter_fair_demo/presentation/widgets/custom_check_box.dart'
])
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  FairApp.runApplication(
    FairApp(
      modules: const {},
      delegate: {
        'splash': (context, _) => SplashDelegate(),
      'login': (context, _) => LoginDelegate(),
    },
      generated: g.AppGeneratedModule(),
      child: const MyApp(),
    ),
    plugins: {
      "FairBasicPlugin": FairBasicPlugin(),
      "HttpInteractionPlugin": HttpInteractionPlugin(),
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SaleClub Fair Demo",
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: MaterialColor(AppColors.primaryColor.value, const {
            50: AppColors.primaryColor,
            100: AppColors.primaryColor,
            200: AppColors.primaryColor,
            300: AppColors.primaryColor,
            400: AppColors.primaryColor,
            500: AppColors.primaryColor,
            600: AppColors.primaryColor,
            700: AppColors.primaryColor,
            800: AppColors.primaryColor,
            900: AppColors.primaryColor,
          }),
          primaryColor: AppColors.primaryColor,
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
          })),
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        final scale = mediaQueryData.textScaleFactor.clamp(1.0, 1.3);
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
            child: GestureDetector(
              child: child,
            ));
      },
      home: const MyHomePage(),
    );
  }
}

// @FairPatch()
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  // final dynamic fairProps;
  // const MyHomePage({Key? key, this.fairProps}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;

  // @FairProps()
  // var _fairProps;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _fairProps = widget.fairProps;
  }
  // String getTitle() {
  //   return _fairProps['title'];
  // }

  callPhone(){
    // HttpInteractionPlugin().http({
    //   'pageName': '#FairKey#',
    //   'method': 'GET',
    //   'url':
    //   'https://wos2.58cdn.com.cn/DeFazYxWvDti/frsupload/6f8e5d9e196cbaa4a46041928770b187_grid_data.json',
    //   'data': {'page': 1},
    //   'success': (resp) {
    //     if (resp == null) {
    //       return;
    //     }
    //     var data = resp['data'];
    //     print(data);
    //     setState(() {});
    //   }
    // });
    FairBasicPlugin().call({
      'pageName': '#FairKey#',
      'args': {
        'type': 'Call',
        'phoneNumber': '15800342502',
        'response': (data) {
          print('response = $data');
        }
      }
    });
  }
  showWidget() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? urlUpdatePath = prefs.getString("splash_screen");
    if (!mounted) return;
    Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
      // return const LoginScreen();
      return FairWidget(
        name: 'splash',
        path: urlUpdatePath ?? 'assets/fair/lib_presentation_modules_splash_src_ui_splash_screen.fair.bin',
        data: {
          'fairProps': jsonEncode({}),
        },
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Test"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Expanded(
              child: Column(
                children: [
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '$_counter',
                    style: const TextStyle(fontSize: 40, color: Color(0xffeb4237), wordSpacing: 0),
                  ),
                ],
              ),
            ),
            CustomButton(
              text: "Đăng nhập", onTap: showWidget,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: callPhone,
        tooltip: 'Call',
        child: const Icon(Icons.phone),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
