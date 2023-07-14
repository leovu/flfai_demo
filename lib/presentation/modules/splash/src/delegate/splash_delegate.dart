/*
* Created by: tranly
* Created at: 2023/07/03 21:04
*/
import 'package:fair/fair.dart';

class SplashDelegate extends FairDelegate{
  late int _typeBackground;
  late  String _background;
  @override
  void initState() {
    super.initState();
    onLoad();
  }
  void onLoad() {
    _typeBackground = 0;
    _background = "assets/images/background_day";
  }

  @override
  Map<String, PropertyValue> bindValue() {
    var functions = super.bindValue();
    functions.addAll({
      '_typeBackground': () => _typeBackground,
      '_background': () => _background,
    });
    return functions;
  }
  @override
  Map<String, Function> bindFunction() {
    return {
      ...super.bindFunction(),
      '_downloadUpdate': _downloadUpdate,
    };
  }


  void _downloadUpdate() {
    print("aaaa");
  }
}