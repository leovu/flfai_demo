import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xFFF37021);
  static const primary50Color = Color(0xFFF9DECF);
  static const white = Color(0xFFFFFFFF);
  static const white50 = Color(0xFFFAFAFA);
  static const line2Color = Color(0xFFE7E8EA);
  static const black = Color(0xFF000000);
  static const lightGrey = Color(0xFFF6F6F6);
  static const grey600 = Color(0xFF777777);
  static const dark = Color(0xFF040C21);
  static const grey200 = Color(0xFFD8D8D8);
  static const lineColor = Color(0xFFEFF0F2);
  static const greenLightColor = Color(0xFFE5FAE6);
  static const greenBorderColor = Color(0xFFC1F0C1);
  static const paginationColor = Color(0xFFF1E4DC);
  static const tabActiveColor = Color(0xFF262B35);
  static const tabInActiveColor = Color(0xFF666D7C);
  static const promotionColor = Color(0xFFF3F4F6);
  static const iconInActiveColor = Color(0xFF727682);
  static const black50Color = Color(0xFF11192E);
  static const colorLine = Color(0xFFF1F1F1);
  static const colorLineImage = Color(0xFFE4E4E4);
  static const headerColorBackground = Color(0xFFFF7421);
  static const headerColorLinearTop = Color(0xFFFFF1D3);
  static const headerColorLinearBottom = Color(0xFFFFE5D4);
  static const colorSelectedService = Color(0xFFFFF5EB);
  static const colorUnSelectedService = Color(0xFFF4F6F8);
  static const colorBorderUnSelectedService = Color(0xFFEAEEF1);
  static const redColor = Color(0xFFE22119);
  static const colorRed = Color(0xFFFF0000);
  static const greenColor = Color(0xFF00D172);
  static const orangeColorGradientTop = Color(0xFFFFA93A);
  static const orangeColorGradientBottom = Color(0xFFFFF9ED);
  static const lineCardColor = Color(0xFFEFEFEF);
  static const blueColor = Color(0xFF2F80ED);
  static const colorBlue = Color(0xFF276EDF);
  static const grey500Color = Color(0xFFA0A4AF);
  static const grey700Color = Color(0xFFC7CBD7);
  static const grey600Color = Color(0xFFBEC0C7);
  static const grey300Color = Color(0xFFF9F9F9);
  static const grey200Color = Color(0xFFF4F4F4);
  static const greyF8Color = Color(0xFFF8F8F8);
  static const redAccColor = Color(0xFFFF8F8F);
  static const blueAccColor = Color(0xFF75AEFF);
  static const blueBackground = Color(0xFFD1E5FF);
  static const colorIconVersion = Color(0xFF4D515E);
  static const colorBgTextField = Color(0xFFF5F5F6);
  static const colorBgBank = Color(0xFFF8F9FB);
  static const shadowColor = Color(0xFFC6C6C6);
  static const colorGreen = Color(0xFF30D78B);
  static const colorGreen50 = Color(0xFFEFFFF8);
  static const colorOrange50 = Color(0xFFFFF2EB);
  static const lineBlueColor = Color(0xFFE4E6EB);
  static const lineTabInactiveColor = Color(0xFFE2E3E6);
  static const lineBoardColor = Color(0xFFE6E6E6);
  static const lineBorderColor = Color(0xFFD2D5DB);
  static const grayBackGround = Color(0xFFE5E5E5);
  static const brown = Color(0xFFC59A70);

  static const backgroundNotification = Color(0xFFECF4FF);
  static const grey34 = Color(0xFFF3F4F7);
  static const colorTabUnselected = Color(0xFF707581);
  static const editColor = Color(0xFFADB2BD);

  static const bluePromotion = Color(0xFF0A6EF4);
  static const bluePrimary = Color(0xFF4564ED);
  static const primaryUnselect = Color(0xFFFFEAD6);
  static const filterSelectedColor = Color(0xFFFFF5EF);
  static const backgroundRed = Color(0xFFFFF8F8);
  static const green = Color(0xFF4CD964);
  static const backgroundGrey = Color(0xFFF5F6F8);
  static const darkGrey = Color(0xFF98A1B3);
  static const ash = Color(0xFF7D8290);
  static const colorDot = Color(0xFFADB1B9);
  static const disableColor = Color(0xFFDADADA);
  static const line1Color = Color(0xFFE3E5EA);
}

class AppFonts {
  static const font = "SF Pro Text";
}

@FairWell('aFair')
int aFair = 0;
@FairWell('bFair')
int bFair = 3;
// class AppSizes {
//   static double? maxWidth;
//   static double? maxHeight;
//   static double? ultraPadding;
//   static double? maxPadding;
//   static double? minPadding;
//   static double? sizeOnTap;
//   static double? statusBarHeight;
//   static double? bottomHeight;
//   static double? sizeAppBar;
//   static double heightLoadMore = 40.0;
//   static init(BuildContext context) {
//     maxWidth = MediaQuery.of(context).size.width;
//     maxHeight = MediaQuery.of(context).size.height;
//     statusBarHeight = MediaQuery.of(context).padding.top;
//     bottomHeight = MediaQuery.of(context).padding.bottom;
//     if (AppSizes.isLargeScreen(context)) {
//       maxPadding = 20.0;
//       minPadding = 15.0;
//       maxWidth = AppSizeWebConfig.maxWidthWeb;
//     } else {
//       maxPadding = (maxWidth! * 0.05);
//       minPadding = maxPadding! / 2;
//     }
//     ultraPadding = maxWidth! * 0.1;
//     sizeOnTap = 48.0;
//     sizeAppBar = statusBarHeight! + kToolbarHeight;
//     heightLoadMore = 40.0 + maxPadding!;
//   }
//
//   static bool isSmallScreen(BuildContext context) {
//     return MediaQuery.of(context).size.width < 800;
//   }
//
//   static bool isLargeScreen(BuildContext context) {
//     return MediaQuery.of(context).size.width > 800;
//   }
//
// // static bool isMediumScreen(BuildContext context) {
// //   return MediaQuery.of(context).size.width >= 800 &&
// //       MediaQuery.of(context).size.width <= 1200;
// // }
// }


class AppKeys {
  static const String keyHUD = "HUD";
  static const String keyLanguage = "LANGUAGE";
}

class AppTextSizes {
  // static double size7 = 7.0;
  static double size8 = 8.0;
  static double size10 = 10.0;
  static double size11 = 11.0;
  static double size12 = 12.0;
  static double size13 = 13.0;
  static double size14 = 14.0;
  static double size15 = 15.0;
  static double size16 = 16.0;
  static double size17 = 17.0;
  static double size18 = 18.0;
  static double size20 = 20.0;
  static double size22 = 22.0;
  static double size24 = 24.0;
  static double size25 = 25.0;
  static double size28 = 28.0;
  static double size30 = 30.0;
  static double size36 = 36.0;
}

class AppTextStyles {

  static TextStyle style12WhiteWeight700Italic = TextStyle(
    fontSize: AppTextSizes.size12,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,);
  static TextStyle style10WhiteWeight700Italic = TextStyle(
    fontSize: AppTextSizes.size10,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,);
  static TextStyle style18WhiteBoldItalic = TextStyle(
    fontSize: AppTextSizes.size18,
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,);
  static TextStyle style20WhiteWeight700= TextStyle(
    fontSize: AppTextSizes.size20,
    color: AppColors.white,
    fontWeight: FontWeight.w700);
  static TextStyle style20BlackWeight400= TextStyle(
      fontSize: AppTextSizes.size20,
      color: AppColors.black,
      fontWeight: FontWeight.w400);
  static TextStyle style36BlackNormal = TextStyle(
      fontSize: AppTextSizes.size36,
      color: AppColors.black,
      fontWeight: FontWeight.normal);
  static TextStyle style25WhiteWeight800Italic = TextStyle(
    fontSize: AppTextSizes.size25,
    color: AppColors.white,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,);

  static TextStyle style25BlackWeight700 = TextStyle(
    fontSize: AppTextSizes.size25,
    color: AppColors.black,
    fontWeight: FontWeight.w700);
  static TextStyle style24BlackBold = TextStyle(
      fontSize: AppTextSizes.size24,
      color: AppColors.black,
      fontWeight: FontWeight.bold);
  static TextStyle style22BlackBold = TextStyle(
      fontSize: AppTextSizes.size22,
      color: AppColors.black,
      fontWeight: FontWeight.bold);
  static TextStyle style16BlackBold = TextStyle(
      fontSize: AppTextSizes.size16,
      color: AppColors.black,
      fontWeight: FontWeight.bold);
  static TextStyle style18BlackBold = TextStyle(
      fontSize: AppTextSizes.size18,
      color: AppColors.black,
      fontWeight: FontWeight.bold);
  static TextStyle style18PrimaryBold = TextStyle(
      fontSize: AppTextSizes.size18,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.bold);
  static TextStyle style17WhiteNormal = TextStyle(
      fontSize: AppTextSizes.size17,
      color: AppColors.white,
      fontWeight: FontWeight.normal);
  static TextStyle style15PrimaryNormal = TextStyle(
      fontSize: AppTextSizes.size15,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.normal);
  static TextStyle style15WhiteNormal = TextStyle(
      fontSize: AppTextSizes.size15,
      color: AppColors.white,
      fontWeight: FontWeight.normal);
  static TextStyle style15BlackNormal = TextStyle(
      fontSize: AppTextSizes.size15,
      color: AppColors.black,
      fontWeight: FontWeight.normal);
  static TextStyle style15BlackBold = TextStyle(
      fontSize: AppTextSizes.size15,
      color: AppColors.black,
      fontWeight: FontWeight.bold);
  static TextStyle style15Grey600Normal = TextStyle(
      fontSize: AppTextSizes.size15,
      color: AppColors.grey600,
      fontWeight: FontWeight.normal);
  static TextStyle style15Red600Normal = TextStyle(
      fontSize: AppTextSizes.size15,
      color: AppColors.redColor,
      fontWeight: FontWeight.normal);
  static TextStyle style12Grey600Normal = TextStyle(
      fontSize: AppTextSizes.size12,
      color: AppColors.grey600,
      fontWeight: FontWeight.normal);
  static TextStyle style12Green600Normal = TextStyle(
      fontSize: AppTextSizes.size12,
      color: AppColors.green,
      fontWeight: FontWeight.normal);
  static TextStyle style12RedNormal = TextStyle(
      fontSize: AppTextSizes.size12,
      color: AppColors.redColor,
      fontWeight: FontWeight.normal);
  static TextStyle style12BlackW400 = TextStyle(
      fontSize: AppTextSizes.size12,
      color: AppColors.black,
      fontWeight: FontWeight.w400);
  static TextStyle style11BlackW700 = TextStyle(
      fontSize: AppTextSizes.size11,
      color: AppColors.black,
      fontWeight: FontWeight.w700);
  static TextStyle style11PrimaryW400 = TextStyle(
      fontSize: AppTextSizes.size11,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400);
  static TextStyle style12PrimaryW400 = TextStyle(
      fontSize: AppTextSizes.size12,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400);
  static TextStyle style12WhiteNormal = TextStyle(
      fontSize: AppTextSizes.size12,
      color: AppColors.white,
      fontWeight: FontWeight.normal);
  static TextStyle style12PrimaryWeight600 = TextStyle(
      fontSize: AppTextSizes.size12,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w600);
  static TextStyle style14WhiteWeight700Italic = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.white,
      fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,);
  static TextStyle style14Black50Weight400 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.black50Color,
      fontWeight: FontWeight.w400);
  static TextStyle style14BlueUnderlineWeight400 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.blueColor,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w400);
  static TextStyle style14WhiteWeight600 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.white,
      fontWeight: FontWeight.w600);
  static TextStyle style14WhiteWeight400 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.white,
      fontWeight: FontWeight.w400);
  static TextStyle style14Grey500Weight400 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.grey500Color,
      fontWeight: FontWeight.w400);
  static TextStyle style14reyTabWeight400 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.tabInActiveColor,
      fontWeight: FontWeight.w400);
  static TextStyle style14PrimaryWeight600 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w600);
  static TextStyle style14PrimaryWeight400 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400);
  static TextStyle style14BlueWeight500 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.bluePrimary,
      fontWeight: FontWeight.w500);
  static TextStyle style14BlackWeight600 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.black,
      fontWeight: FontWeight.w600);
  static TextStyle style14BlackWeight500 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.black,
      fontWeight: FontWeight.w500);
  static TextStyle style14BlackWeight400 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.black,
      fontWeight: FontWeight.w400);
  static TextStyle style14BlackBold = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.black,
      fontWeight: FontWeight.bold);
  static TextStyle style13Black50Weight400 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.black50Color,
      fontWeight: FontWeight.w400);
  static TextStyle style13BlueUnderlineWeight400 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.blueColor,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w400);
  static TextStyle style13BlackBold = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.black,
      fontWeight: FontWeight.bold);
  static TextStyle style13BlackWeight400 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.black,
      fontWeight: FontWeight.w400);
  static TextStyle style13BlackWeight500 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.black,
      fontWeight: FontWeight.w500);
  static TextStyle style13BlackWeight600 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.black,
      fontWeight: FontWeight.w600);
  static TextStyle style13Grey500Weight400 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.grey500Color,
      fontWeight: FontWeight.w400);
  static TextStyle style13BlackWeight700 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.black,
      fontWeight: FontWeight.w700);
  static TextStyle style13RedWeight700 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.redColor,
      fontWeight: FontWeight.w700);
  static TextStyle style13RedWeight400 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.redColor,
      fontWeight: FontWeight.w400);
  static TextStyle style14RedWeight400 = TextStyle(
      fontSize: AppTextSizes.size14,
      color: AppColors.redColor,
      fontWeight: FontWeight.w400);
  static TextStyle style13Weight400 =
      TextStyle(fontSize: AppTextSizes.size13, fontWeight: FontWeight.w400);
  static TextStyle style13GrayWeight400 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.tabInActiveColor,
      fontWeight: FontWeight.w400);
  static TextStyle style13GreenWeight400 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.green,
      fontWeight: FontWeight.w400);
  static TextStyle style13PrimaryWeight400 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400);
  static TextStyle style13WhiteWeight400 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.white,
      fontWeight: FontWeight.w400);
  static TextStyle style13GreenWeight500 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.greenColor,
      fontWeight: FontWeight.w500);
  static TextStyle style13BlueWeight400 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.bluePrimary,
      fontWeight: FontWeight.w400);
  static TextStyle style13BlueWeight500 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.bluePrimary,
      fontWeight: FontWeight.w500);
  static TextStyle style13BluePrimaryWeight600 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.bluePrimary,
      fontWeight: FontWeight.w600);
  static TextStyle style13BluePrimaryWeight400 = TextStyle(
      fontSize: AppTextSizes.size13,
      color: AppColors.bluePrimary,
      fontWeight: FontWeight.w400);
  static TextStyle style12DartColorWeight500 = TextStyle(
      fontSize: AppTextSizes.size12,
      color: AppColors.dark,
      fontWeight: FontWeight.w500);
  static TextStyle style12DartColorWeight400 = TextStyle(
      fontSize: AppTextSizes.size12,
      color: AppColors.dark,
      fontWeight: FontWeight.w400);
  static TextStyle style12Grey500ColorWeight400 = TextStyle(
      fontSize: AppTextSizes.size12,
      color: AppColors.grey500Color,
      fontWeight: FontWeight.w400);
  static TextStyle style11Grey500ColorWeight400 = TextStyle(
      fontSize: AppTextSizes.size11,
      color: AppColors.grey500Color,
      fontWeight: FontWeight.w400);
  static TextStyle style11WhiteWeight500 = TextStyle(
      fontSize: AppTextSizes.size11,
      color: AppColors.white,
      fontWeight: FontWeight.w500);
  static TextStyle style11WhiteNormal = TextStyle(
      fontSize: AppTextSizes.size11,
      color: AppColors.white,
      fontWeight: FontWeight.normal);
  static TextStyle style16BlackWeight700 = TextStyle(
      fontSize: AppTextSizes.size16,
      color: AppColors.black,
      fontWeight: FontWeight.w700);
  static TextStyle style16BlackWeight500 = TextStyle(
      fontSize: AppTextSizes.size16,
      color: AppColors.black,
      fontWeight: FontWeight.w500);
  static TextStyle style16BlackWeight600 = TextStyle(
      fontSize: AppTextSizes.size16,
      color: AppColors.black,
      fontWeight: FontWeight.w600);
  static TextStyle style16WhiteNormal = TextStyle(
      fontSize: AppTextSizes.size16,
      color: AppColors.white,
      fontWeight: FontWeight.normal);
  static TextStyle style16WhiteBold = TextStyle(
      fontSize: AppTextSizes.size16,
      color: AppColors.white,
      fontWeight: FontWeight.bold);
  static TextStyle style20WhiteBold = TextStyle(
      fontSize: AppTextSizes.size20,
      color: AppColors.white,
      fontWeight: FontWeight.bold);
  static TextStyle style10WhiteBold = TextStyle(
      fontSize: AppTextSizes.size10,
      color: AppColors.white,
      fontWeight: FontWeight.bold);
  static TextStyle style12BlackWeight500 = TextStyle(
      fontSize: AppTextSizes.size12,
      color: AppColors.black,
      fontWeight: FontWeight.w500);
  static TextStyle style12BlackWeight400 = TextStyle(
      fontSize: AppTextSizes.size12,
      color: AppColors.black,
      fontWeight: FontWeight.w400);
  static TextStyle style15BlackWeight700 = TextStyle(
      fontSize: AppTextSizes.size15,
      color: AppColors.black,
      fontWeight: FontWeight.w700);
}

class AppAnimation {
  static Duration duration = const Duration(milliseconds: 500);
  static Curve curve = Curves.fastOutSlowIn;
}

class AppBoxShadow {
  static List<BoxShadow> boxShadow = [
    BoxShadow(
        color: AppColors.black.withOpacity(0.1),
        offset: const Offset(0.0, 2.0),
        blurRadius: 4.0)
  ];
  static List<BoxShadow> appBarShadow = [
    BoxShadow(
        offset: const Offset(0.0, -1.0),
        color: AppColors.white.withOpacity(0.05),
        blurRadius: 10.0)
  ];
  static List<BoxShadow> cardShadow = [
    BoxShadow(
      color: AppColors.shadowColor.withOpacity(0.3),
      offset: const Offset(0.0, 1),
      blurRadius: 6.0,
    ),
  ];
  static List<BoxShadow> bottomShadow = [
    BoxShadow(
        color: AppColors.shadowColor.withOpacity(0.35),
        offset: const Offset(
          0.0,
          3,
        ),
        blurRadius: 3.0,
        spreadRadius: 6.0),
  ];
}

class AppGradient {
  static Gradient orangeGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      AppColors.orangeColorGradientTop,
      AppColors.orangeColorGradientBottom
    ],
    stops: [0.0, 1],
  );
}

class AppTag {
  static const hero = "hero";
}

class AppLength {
  static const accountNumber = 20;
  static const identityCard = 12;
  static const moneyLength = 10;
  static const phoneLength = 10;
  static const maxLength = 255;
  static const taxLength = 10;
  static const minimumNumber = 1;
  static const maxNumber = 2000000000;
  static const moneyMax= 9999999000;
}
class AppSizeWebConfig {
  static const maxWidthWeb = 500.0;
  static const maxHeightWeb =  926.0;
}
class ApplicationMode{
  static const dev = "development";
  static const stag =  "staging";
  static const prod =  "production";
  static const saleClubStag =  "saleClubStag";
  static const saleClubProd =  "saleClub";
}

// Code type from API
class StatusCodeApi {
  static const successCode = 200;
  static const listCodePingGoogle =  [200, 201, 202, 204, 301, 302, 303, 304, 307, 308, 400, 429, 401, 403, 404, 410, 411];
  static const successDetectCode = 0;
  static const serverErrorCode = 500;
  static const accountLockedCode = -120;///. (Lỗi này có thểdo người dùng đăng nhập máy khác hoặc đang dùng bịkhóa tài khoản)
  static const validateInputErrorCode = -121; ///Lỗi validate input
  static const businessErrorCode = -110 ; ///Lỗi chung business
  static const voucherNotFoundCode = -141 ; ///Lỗi chung business
  static const exceptionErrorCode = -130 ; /// Lỗi exception
  static const warningErrorCode = -311 ; /// Warning
  static const userNoRight = -312 ; /// Chú ý user không có quyền dùng chức năng []
  static const errorStartCode = -199 ; /// Hiển thị popup báo lỗi và chỉ có 1 action “Xác nhận” để tắt popup
  static const errorEndCode = -100 ; /// Hiển thị popup báo lỗi và chỉ có 1 action “Xác nhận” để tắt popup
  static const warning2StartCode = -399 ; /// Warning2: -399 -> -350 Hiển thị popup thông báo và chia 2 action “Đồng ý” để tiếp tục sang bước tiếp theo và “Hủy” để dừng lại
  static const warning2EndCode = -350 ; /// Warning2: -399 -> -350 Hiển thị popup thông báo và chia 2 action “Đồng ý” để tiếp tục sang bước tiếp theo và “Hủy” để dừng lại
  static const warning1StartCode = -349; /// Hiển thị popup thông báo và  và chỉ có 1 action “Xác nhận” để tắt popup
  static const warning1EndCode = -300 ; /// Hiển thị popup thông báo và  và chỉ có 1 action “Xác nhận” để tắt popup
  static const disableAppointmentCode = -301 ; /// Hiển thị popup thông báo và  và chỉ có 1 action “Xác nhận” để tắt popup
  static const disableNoAppointmentCode = -302 ; /// Hiển thị popup thông báo và  và chỉ có 1 action “Xác nhận” để tắt popup
  static const expiredTokenCode = -401 ; /// Hết token, gọi refresh không đc đá ra ngoài login luôn
  static const expiredTokenCodeHttp = 401 ; /// Hết token, gọi refresh không đc đá ra ngoài login luôn
 static const noAuthHttpCode = 403 ;/// HttpStatusCode = 403-> show thông báo "Bạn không có quyền truy cập."
  static const gatewayTimeoutCode = 504 ;/// HttpStatusCode = 504-> show thông báo timeout
  static const gatewayTimeoutCode2 = 502 ;/// HttpStatusCode = 502-> show thông báo timeout
  static const appTimeoutCode = 1 ;/// app chưa call được api
  static const otpExpiredCode = -140 ;/// app chưa call được api
}