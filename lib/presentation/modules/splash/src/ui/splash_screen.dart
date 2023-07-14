/*
* Created by: tranly
* Created at: 2023/06/28 15:56
*/
import 'dart:convert';
import 'package:file_saver/file_saver.dart';
import 'package:flutter_fair_demo/presentation/widgets/custom_background_app.dart';
import 'package:flutter_fair_demo/presentation/widgets/custom_progress_indcator.dart';
import 'package:fair/fair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fair_demo/presentation/widgets/custom_scaffold.dart';
import 'package:shared_preferences/shared_preferences.dart';

@FairPatch()
class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @FairWell('_isLoading')
  late  bool _isLoading;
  @override
  void initState() {
// TODO: implement initState
    super.initState();
    _isLoading = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _downloadUpdate(context);
    });
  }

  @FairWell('_downloadUpdate')
  void _downloadUpdate(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? urlUpdatePath = prefs.getString("splash_screen");
    if(urlUpdatePath == null) {
      String path = await FileSaver.instance.saveFile(
          name: "lib_presentation_modules_splash_src_ui_splash_screen.fair.bin",
          ext: 'bin',
          link: LinkDetails(link: "https://epoint-bucket.s3.ap-southeast-1.amazonaws.com/app/lib_presentation_modules_splash_src_ui_splash_screen.fair.bin"),
          customMimeType: 'bin');
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("splash_screen", path);
      if (!context.mounted) return;
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (_) {
        return FairWidget(
          name: 'splash',
          path: path,
          data: {
            'fairProps': jsonEncode({}),
          },
        );
      }));
    }
    else {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
// TODO: implement dispose
    super.dispose();
  }

  Widget _buildBody() {
    return Stack(
      fit: StackFit.expand,
      children: [
        const CustomBackgroundDayApp(),
        if(_isLoading) const CustomProgressIndicator(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: _buildBody(),
    );
  }
}
