
import 'package:flutter/material.dart';

class SplashScreenOneOneScreen extends GetWidget<SplashScreenOneOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 3, top: 2, right: 3, bottom: 2),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtButton();
                              },
                              child: Padding(
                                  padding: getPadding(top: 20, right: 29),
                                  child: Text("lbl_skip".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular14
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(0.5)))))),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: getHorizontalSize(384),
                                margin: getMargin(left: 13, top: 20, right: 24),
                                child: Text("msg_park_your_vehicle".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratRomanBold24)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: getHorizontalSize(290),
                                    margin: getMargin(left: 13, top: 17),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text:
                                              "msg_say_goodbye_to_parking4"
                                                  .tr,
                                              style: TextStyle(
                                                  color:
                                                  ColorConstant.black90066,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                              text: " ",
                                              style: TextStyle(
                                                  color:
                                                  ColorConstant.black90066,
                                                  fontSize: getFontSize(20),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w700)),
                                          TextSpan(
                                              text: "lbl_letz_scan".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.red600,
                                                  fontSize: getFontSize(20),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w700))
                                        ]),
                                        textAlign: TextAlign.left))),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup11,
                                width: getHorizontalSize(422),
                                alignment: Alignment.centerLeft,
                                margin: getMargin(top: 30, bottom: 5))
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: getHorizontalSize(384),
                                margin: getMargin(left: 13, top: 20, right: 24),
                                child: Text("msg_park_your_vehicle".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratRomanBold24)),
                            Container(
                                width: getHorizontalSize(290),
                                margin: getMargin(left: 13, top: 17),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                          "msg_say_goodbye_to_parking4".tr,
                                          style: TextStyle(
                                              color: ColorConstant.black90066,
                                              fontSize: getFontSize(16),
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: " ",
                                          style: TextStyle(
                                              color: ColorConstant.black90066,
                                              fontSize: getFontSize(20),
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w700)),
                                      TextSpan(
                                          text: "lbl_letz_scan".tr,
                                          style: TextStyle(
                                              color: ColorConstant.red600,
                                              fontSize: getFontSize(20),
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w700))
                                    ]),
                                    textAlign: TextAlign.left)),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup11,
                                width: getHorizontalSize(422),
                                margin: getMargin(top: 10, bottom: 5))
                          ])
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 30),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: getVerticalSize(8),
                          margin: getMargin(top: 31, bottom: 31),
                          child: SmoothIndicator(
                              offset: 0,
                              count: 3,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 10,
                                  activeDotColor: ColorConstant.indigo900,
                                  dotColor: ColorConstant.gray300,
                                  dotHeight: getVerticalSize(8),
                                  dotWidth: getHorizontalSize(8)))),
                      GestureDetector(
                          onTap: () {
                            onTapTxtbuttontransp();
                          },
                          child: Container(
                              width: getSize(70),
                              padding: getPadding(
                                  left: 16, top: 24, right: 16, bottom: 24),
                              decoration: AppDecoration.txtPrimary.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.txtCircleBorder35),
                              child: Text("lbl_next".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16.copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))))
                    ]))));
  }

  onTapTxtButton() {
    Get.toNamed(AppRoutes.splashScreenTwoOneScreen);
  }

  onTapTxtbuttontransp() {
    Get.toNamed(AppRoutes.splashScreenTwoOneScreen);
  }


}

class ColorConstant {
}
