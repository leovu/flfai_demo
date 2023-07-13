/*
* Created by: tranly
* Created at: 2023/06/29 13:51
*/
import 'dart:convert';

import 'package:fair/fair.dart';
import 'package:url_launcher/url_launcher.dart';

///The class name here needs to be consistent with the variable name in js
class FairBasicPlugin extends IFairPlugin {

  static final FairBasicPlugin _fairXPlugin = FairBasicPlugin._internal();

  FairBasicPlugin._internal();

  factory FairBasicPlugin() {
    return _fairXPlugin;
  }

  Future<bool> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    return await launchUrl(launchUri);
  }

  Future<dynamic> call(map) async {
    print('FairXPlugin pluginRequest');

    if (map == null) {
      return;
    }
    var req;
    bool isDart;
    if (map is Map) {
      isDart = true;
      req = map;
    } else {
      isDart = false;
      req = jsonDecode(map);
    }

    var args = req['args'];
    var pageName = req['pageName'];
    var id = req['id'];

    var responseCallback = args['response'];
    var type = args['type'];
    switch(type) {
      case 'Call':
        var phoneNumber = args['phoneNumber'];
        var result = await canLaunchUrl(Uri(scheme: 'tel', path: phoneNumber));
        if (result) {
          var value = await _makePhoneCall(phoneNumber);
          if (isDart) {
            responseCallback?.call(value);
          } else {
            var resp = {
              'pageName': pageName,
              'id': id,
              'response': value,
            };
            return Future.value(jsonEncode(resp));
          }
        } else {
          throw 'Could not call $phoneNumber';
        }
        break;
    }

    return Future.value();
  }


  ///Register the method name that needs to be recognized
  @override
  Map<String, Function> getRegisterMethods() {
    var functions = <String, Function>{};
    functions.putIfAbsent('call', () => call);
    return functions;
  }

}
