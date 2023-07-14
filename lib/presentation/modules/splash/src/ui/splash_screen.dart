/*
* Created by: tranly
* Created at: 2023/06/28 15:56
*/
import 'dart:convert';
import 'package:flutter_fair_demo/common/assets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fair/fair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fair_demo/presentation/widgets/custom_scaffold.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lottie/lottie.dart';

@FairPatch()
class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  @FairWell('_typeBackground')
  late int _typeBackground;
  @FairWell('_background')
  late  String _background;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    _typeBackground = 0;
    if(_typeBackground == 0) {
      _background = AssetImages.dayBackground;
    }
    else {
      _background = AssetImages.nightBackground;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _downloadUpdate();
    });
  }

  @FairWell('_downloadUpdate')
  void _downloadUpdate() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? urlUpdatePath = prefs.getString("splash_screen");
    if(urlUpdatePath != null) {
      if (!mounted) return;
      Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
        return FairWidget(
          name: 'login',
          path: 'assets/fair/lib_presentation_modules_login_src_ui_login_screen.fair.bin',
          data: {
            'fairProps': jsonEncode({}),
          },
        );
      }));
    }
    else {
      FileDownloader.downloadFile(
          url: "",
          name: "lib_presentation_modules_splash_src_ui_splash_screen.fair.bin",
          onProgress: (String? fileName, double progress) {

          },
          onDownloadCompleted: (String path) async {
            final SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString("splash_screen", path);
            if (!mounted) return;
            Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (_) {
              return FairWidget(
                name: 'login',
                path: 'assets/fair/lib_presentation_modules_splash_src_ui_splash_screen.fair.bin',
                data: {
                  'fairProps': jsonEncode({}),
                },
              );
            }));
          },
          onDownloadError: (String error) {
            Fluttertoast.showToast(
                msg: "Có lỗi xày ra!",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: 16.0
            );
          });
    }
  }

  @override
  void dispose() {
// TODO: implement dispose
    super.dispose();
  }

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(_background),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Lottie.asset('assets/json/LottieLogo.json')
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: _buildBody(),
    );
  }
}
