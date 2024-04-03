import 'package:kabil_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kabil_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:kabil_s_application1/widgets/custom_text_form_field.dart';
import 'package:kabil_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:kabil_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeThreeScreen extends StatelessWidget {
  AndroidLargeThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgAndroidLarge800x360,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: 721.v,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 136.v,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                _buildSix(context),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "Welcome again",
                      style: CustomTextStyles
                          .displayMediumMaturaMTScriptCapitalsOnPrimary,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGroup1,
        margin: EdgeInsets.only(
          left: 9.h,
          right: 290.h,
        ),
        onTap: () {
          onTapIconButton(context);
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 3.v),
        padding: EdgeInsets.symmetric(
          horizontal: 3.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.outlineBlack900.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder70,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 44.v),
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                "Username/Email",
                style: theme.textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 9.v),
            CustomTextFormField(
              controller: userNameController,
            ),
            SizedBox(height: 26.v),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "Password",
                style: theme.textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 15.v),
            CustomTextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              obscureText: true,
            ),
            SizedBox(height: 8.v),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "Forgot password ?",
                style: CustomTextStyles.bodyLargeLexendDeca,
              ),
            ),
            SizedBox(height: 54.v),
            CustomElevatedButton(
              text: "Login",
              margin: EdgeInsets.symmetric(horizontal: 47.h),
              buttonStyle: CustomButtonStyles.outlineGrayF,
              alignment: Alignment.center,
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the androidLargeOneScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeOneScreen);
  }
}
