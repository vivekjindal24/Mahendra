import 'bloc/android_large_one_bloc.dart';
import 'models/android_large_one_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_shakti/core/app_export.dart';
import 'package:shiv_shakti/widgets/custom_elevated_button.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  const AndroidLargeOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeOneBloc>(
        create: (context) => AndroidLargeOneBloc(AndroidLargeOneState(
            androidLargeOneModelObj: AndroidLargeOneModel()))
          ..add(AndroidLargeOneInitialEvent()),
        child: AndroidLargeOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeOneBloc, AndroidLargeOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(-0.02, 1),
                          colors: [
                        theme.colorScheme.onPrimary,
                        appTheme.lime100B2
                      ])),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 28.v),
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLordShivaWallArt1,
                            height: 230.v,
                            width: 266.h,
                            radius: BorderRadius.circular(115.h)),
                        CustomImageView(
                            imagePath: ImageConstant.imgShivShakti1,
                            height: 194.v,
                            width: 311.h,
                            radius: BorderRadius.circular(97.h)),
                        SizedBox(height: 4.v),
                        CustomElevatedButton(
                            text: "lbl".tr,
                            onPressed: () {
                              HELLO(context);
                            }),
                        SizedBox(height: 20.v),
                        CustomElevatedButton(
                            text: "lbl2".tr,
                            onPressed: () {
                              HELLO2(context);
                            }),
                        SizedBox(height: 20.v),
                        CustomElevatedButton(
                            text: "lbl3".tr,
                            onPressed: () {
                              HELLO3(context);
                            }),
                        SizedBox(height: 5.v)
                      ])))));
    });
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  HELLO(BuildContext context) async {
    var url =
        'https://docs.google.com/forms/d/e/1FAIpQLSfb2I91VcLtJjU7YAQM3Tf4Vik38RDE9Rf7FPvajTucC9Yydg/viewform?usp=sf_link';
    if (!await launchUrlString(url)) {
      throw 'Could not launch https://docs.google.com/forms/d/e/1FAIpQLSfb2I91VcLtJjU7YAQM3Tf4Vik38RDE9Rf7FPvajTucC9Yydg/viewform?usp=sf_link';
    }
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  HELLO2(BuildContext context) async {
    var url =
        'https://docs.google.com/forms/d/e/1FAIpQLScPEE4CPpSs40jK2bpydTJR0nLkhAivuIj5JVmBbSe8r8edyQ/viewform?usp=sf_link';
    if (!await launchUrlString(url)) {
      throw 'Could not launch https://docs.google.com/forms/d/e/1FAIpQLScPEE4CPpSs40jK2bpydTJR0nLkhAivuIj5JVmBbSe8r8edyQ/viewform?usp=sf_link';
    }
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  HELLO3(BuildContext context) async {
    var url =
        'https://docs.google.com/forms/d/e/1FAIpQLScHjEmQYu1QIDl6aTITiO4hMBeSA-YI_j5aHgYTzfDOLSR1Wg/viewform?usp=sf_link';
    if (!await launchUrlString(url)) {
      throw 'Could not launch https://docs.google.com/forms/d/e/1FAIpQLScHjEmQYu1QIDl6aTITiO4hMBeSA-YI_j5aHgYTzfDOLSR1Wg/viewform?usp=sf_link';
    }
  }
}
