import 'package:kabil_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:kabil_s_application1/core/app_export.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  const AndroidLargeOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            border: Border.all(
              color: theme.colorScheme.onPrimary,
              width: 1.h,
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgAndroidLarge,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 20.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 156.v,
                    width: 141.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 139.h,
                            child: Text(
                              "The\nBest app\nFor your \nFitness",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineLarge,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 139.h,
                            child: Text(
                              "The\nBest app\nFor your \nFitness",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.headlineLargeBluegray10001,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 80,
                ),
                CustomOutlinedButton(
                  text: "Sign In",
                  margin: EdgeInsets.symmetric(horizontal: 39.h),
                  onPressed: () {
                    onTapSignIn(context);
                  },
                ),
                SizedBox(height: 2.v),
                GestureDetector(
                  onTap: () {
                    onTapTxtCreateAnAccount(context);
                  },
                  child: Text(
                    "Create an account",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 19,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the androidLargeThreeScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeThreeScreen);
  }

  /// Navigates to the androidLargeTwoScreen when the action is triggered.
  onTapTxtCreateAnAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeTwoScreen);
  }
}
