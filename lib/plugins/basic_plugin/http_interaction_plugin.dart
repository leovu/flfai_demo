/*
* Created by: tranly
* Created at: 2023/07/03 10:46
*/
import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:fair/fair.dart';

mixin HttpPlugin implements FairCommonPluginMixin {
  // final String _typeApplication = "application/json";
  // final String _typeMultipart = "multipart/form-data";
  // final String _typeUrlencoded = "application/x-www-form-urlencoded";
  // Future<Map<String, String>> _headers(
  //     Map<String, String>? content, Map<String, dynamic>? params,
  //     {bool isAuth = true, bool isBasic = false, bool isLogin = false, bool isPublic = false, bool isGoogleApi = false}) async {
  //   Map<String, String> headers = {
  //     HttpHeaders.contentTypeHeader: listFile == null ? _typeApplication : _typeMultipart,
  //   };
  //
  //   String digest = hashDigest(params);
  //   headers['Digest'] = digest;
  //   headers['CheckSum'] = checkSum(digest, isAuth: isAuth, isBasic: isBasic,isPublic:isPublic );
  //   if (isAuth) {
  //     List<int> bytes;
  //     if(isPublic) {
  //       bytes = utf8.encode(Globals.config.clientKeyPublic + ":" + Globals.config.clientSecretPublic);
  //     } else {
  //       bytes = utf8.encode(Globals.config.clientKey + ":" + Globals.config.clientSecret);
  //     }
  //     headers['Authorization'] = "Basic ${base64.encode(bytes)}";
  //   }
  //   if (!isLogin) {
  //     String token;
  //     if(isPublic){
  //       token = Globals.prefs.getString(SharedPrefsKey.tokenPublic);
  //     }else{
  //       token = Globals.prefs.getString(SharedPrefsKey.token);
  //     }
  //     if ((token ?? "").isNotEmpty) {
  //       headers[HttpHeaders.authorizationHeader] = "Bearer $token";
  //     }
  //     String sandBoc = Globals.prefs.getString(SharedPrefsKey.sandBox);
  //     if ((sandBoc ?? "").isNotEmpty) {
  //       headers["Sandbox"] = sandBoc;
  //     }
  //   }
  //   if (content != null) {
  //     content.forEach((key, value) {
  //       headers[key] = value;
  //     });
  //   }
  //
  //   return headers;
  // }
  // String hashDigest(Map<String, dynamic>? params) {
  //   // SHA-256
  //   String temp = "";
  //   var key = utf8.encode(Globals.config.httpSignatureSecret);
  //   if (params != null) {
  //     temp = json.encode(params);
  //   }
  //   var bytes = utf8.encode(temp);
  //   var hMac256 = Hmac(sha256, key);
  //   var digestByte = hMac256.convert(bytes);
  //   // base 64
  //   String encoded = base64.encode(digestByte.bytes);
  //   // customPrint(encoded);
  //   return encoded;
  // }
  //
  // String checkSum(String digest, {isAuth = true, isBasic = false, isPublic = false}) {
  //   String token;
  //   if(isPublic){
  //     token = Globals.prefs.getString(SharedPrefsKey.tokenPublic);
  //   }else{
  //     token = Globals.prefs.getString(SharedPrefsKey.token);
  //   }
  //   String created =
  //   (DateTime.now().toUtc().millisecondsSinceEpoch / 1000).toString().split(".")[0];
  //   String keyId;
  //   if(isPublic){
  //     keyId = Globals.config.clientKeyPublic;
  //   }else{
  //     keyId = Globals.config.clientKey;
  //   }
  //   var key = utf8.encode(Globals.config.httpSignatureSecret);
  //   String pattern = "";
  //   if (isBasic) {
  //     List<int> bytes;
  //     if(isPublic) {
  //       bytes = utf8.encode(Globals.config.clientKeyPublic + ":" + Globals.config.clientSecretPublic);
  //     } else {
  //       bytes = utf8.encode(Globals.config.clientKey + ":" + Globals.config.clientSecret);
  //     }
  //     pattern = "keyId=$keyId,digest=$digest,created=$created,token=Basic ${base64.encode(bytes)}";
  //   } else {
  //     if (token == "") {
  //       if (isAuth) {
  //         List<int> bytes;
  //         if(isPublic) {
  //           bytes = utf8.encode(Globals.config.clientKeyPublic + ":" + Globals.config.clientSecretPublic);
  //         } else {
  //           bytes = utf8.encode(Globals.config.clientKey + ":" + Globals.config.clientSecret);
  //         }
  //         pattern = "keyId=$keyId,digest=$digest,created=$created,token=Basic ${base64.encode(bytes)}";
  //       } else {
  //         pattern = "keyId=$keyId,digest=$digest,created=$created,token=$token";
  //       }
  //     } else {
  //       pattern = "keyId=$keyId,digest=$digest,created=$created,token=Bearer $token";
  //     }
  //   }
  //   var bytes = utf8.encode(pattern);
  //   var hMac256 = Hmac(sha256, key);
  //   var digestByte = hMac256.convert(bytes);
  //   String encoded = base64.encode(digestByte.bytes);
  //   return pattern = "keyId=$keyId,created=$created,signature=$encoded";
  // }


  Future<dynamic> http(dynamic map) => request(
    map, (dynamic requestMap) async {
      final method = requestMap['method'];
      final url = requestMap['url'];
      final headers = requestMap['headers'];
      final body = requestMap['body'];
      print(requestMap);
      switch (method) {
        case 'GET':
          // final Response result =
          // await HttpClientHelper.get(Uri.parse(url)) as Response;
          // return {
          //   'json': jsonDecode(result.body),
          //   'statusCode': result.statusCode,
          // };
        case 'POST':
          // final Response result = await HttpClientHelper.post(
          //   Uri.parse(url),
          //   headers: headers,
          //   body: body,
          // ) as Response;
          // return {
          //   'json': jsonDecode(result.body),
          //   'statusCode': result.statusCode,
          // };
        default:
      }

      return null;
    },
  );
}
class HttpInteractionPlugin extends IFairPlugin with HttpPlugin {
  static final HttpInteractionPlugin _fairHttpPlugin = HttpInteractionPlugin._internal();

  HttpInteractionPlugin._internal();
  factory HttpInteractionPlugin() {
    return _fairHttpPlugin;
  }
  @override
  Map<String, Function> getRegisterMethods() {
    return {
      'http': http,
    };
  }
}