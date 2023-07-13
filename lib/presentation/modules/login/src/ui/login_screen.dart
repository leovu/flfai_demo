/*
* Created by: tranly
* Created at: 2023/06/28 15:56
*/
import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fair_demo/presentation/widgets/custom_button.dart';
import 'package:flutter_fair_demo/presentation/widgets/custom_check_box.dart';
import 'package:flutter_fair_demo/presentation/widgets/custom_scaffold.dart';
import 'package:flutter_fair_demo/presentation/widgets/custom_text_field.dart';

@FairPatch()
class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  // @FairWell('_userNameController')
  // late TextEditingController _userNameController;
  // //
  // @FairWell('_passwordController')
  // late  TextEditingController _passwordController;
  //
  @FairWell('_userNameNode')
  late  FocusNode _userNameNode;
  @FairWell('_passwordNode')
  late FocusNode _passwordNode;
  @FairWell('_controller')
  late ScrollController _controller;
  @FairWell('_textNextInputAction')
  late TextInputAction _textNextInputAction;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    _controller= ScrollController();
    _textNextInputAction= TextInputAction.next;
    _passwordNode = FocusNode();
    _userNameNode = FocusNode();
    // _userNameController = TextEditingController();
    // _passwordController = TextEditingController();
  }

  @override
  void dispose() {
// TODO: implement dispose
    super.dispose();
  }
  @FairWell('_onChangedValue')
  void _onChangedValue(bool? value) {
    print("from dart");
  }

  Widget inputForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15.0),
          child: const Text(
            "Đăng nhập",
            style:  TextStyle(
                fontSize: 22.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
          child: CustomTextField(
            hintText: "Tài khoản SaleClub",
            // controller: _userNameController,
            focusNode: _userNameNode,
            textInputAction: _textNextInputAction,
            radius: 4.0,
            // onChanged: (event) {},
            // onSubmitted: (event) {},
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
          child: CustomTextField(
            hintText: "Mật khẩu",
            // controller: _passwordController,
            focusNode: _passwordNode,
            radius: 4.0,
            obscureText: false,
          ),
        ),
        rememberAndForgetPassword(),
        const CustomButton(
          radius: 4.0,
          text: "Đăng nhập",
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: const Text(
              "Bạn chưa có tài khoản",
              style: TextStyle(
                  fontSize: 14.0,
                  color:Color(0xFF000000),
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Container(
          height: 40.0,
          alignment: Alignment.center,
          child: const Center(
            child: Text(
              "Đăng ký đối tác kinh doanh",
              style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF2F80ED),
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget rememberAndForgetPassword() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0,bottom: 10.0,left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: Row(
              children: [
                CustomCheckbox(
                  value: false,
                  onChanged: _onChangedValue,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left:5.0),
                    child: const Text(
                      "Nhớ mật khẩu",
                      // style: AppTextStyles.style14Black50Weight400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
              flex: 1,
              child: Container()),
          Flexible(
            flex: 2,
            child: Container(
              height: 40.0,
              alignment: Alignment.center,
              child: const Center(
                child: Text(
                  "Quên mật khẩu",
                  // style: AppTextStyles.style14BlueUnderlineWeight400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      controller: _controller,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width*0.2 + MediaQuery.of(context).padding.top,
                    right: MediaQuery.of(context).size.width*0.05,
                    bottom: MediaQuery.of(context).size.width*0.05),
                child: Image.asset(
                  "assets/images/img_logo_saleclub.png",
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
            ),
          ),
          inputForm(),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              height: 25.0,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Image.asset("assets/icons/ic_fpt.png"),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(
                  top: 20.0, bottom: 20.0),
              child: const Text(
                "Version",
                // style: AppTextStyles.style12Grey600Normal,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: _buildBody(),
    );
  }
}
