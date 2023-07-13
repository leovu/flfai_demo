/*
* Created by: tranly
* Created at: 2023/07/03 21:04
*/
import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

class LoginDelegate extends FairDelegate{
  late ScrollController _controller;
  late TextEditingController _userNameController;
  late TextEditingController _passwordController;
  late FocusNode _userNameNode;
  late FocusNode _passwordNode;
  @override
  void initState() {
    super.initState();
    onLoad();
  }
  void onLoad() {
    _controller = ScrollController();
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
    _userNameNode = FocusNode();
    _passwordNode = FocusNode();
  }

  @override
  Map<String, PropertyValue> bindValue() {
    var functions = super.bindValue();
    functions.addAll({
      '_controller': () => _controller,
      '_userNameController': () => _userNameController,
      '_passwordController': () => _passwordController,
      '_userNameNode': () => _userNameNode,
      '_passwordNode': () => _passwordNode,
      '_textDoneInputAction': () => TextInputAction.done,
      '_textNextInputAction': () => TextInputAction.next
    });
    return functions;
  }
  @override
  Map<String, Function> bindFunction() {
    return {
      ...super.bindFunction(),
      '_onChangedValue': _onChangedValue,
    };
  }

  _onChangedValue(bool? value) {
    print(value);
    print("aaaa");
  }
}