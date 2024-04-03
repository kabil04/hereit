import 'package:kabil_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kabil_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:kabil_s_application1/widgets/custom_text_form_field.dart';
import 'package:kabil_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:kabil_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeTwoScreen extends StatelessWidget {
  AndroidLargeTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: SizeUtils.height,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup8,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 11.h,
                        vertical: 24.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder99,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              decoration:
                                  AppDecoration.outlineOnPrimaryContainer,
                              child: Text(
                                "Welcome",
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 57.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "Username",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          _buildUserName(context),
                          SizedBox(height: 10.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "Email",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 1.v),
                          _buildEmail(context),
                          SizedBox(height: 10.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "Password",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 1.v),
                          _buildPassword(context),
                          SizedBox(height: 11.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "Confirm Password",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 7.v),
                          _buildConfirmpassword(context),
                          SizedBox(height: 19.v),
                          _buildSignUp(context),
                          SizedBox(height: 19.v)
                        ],
                      ),
                    ),
                  )
                ],
              ),
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
          left: 16.h,
          right: 283.h,
        ),
        onTap: () {
          onTapIconButton(context);
        },
      ),
      title: Opacity(
        opacity: 0.99,
        child: Padding(
          padding: EdgeInsets.only(
            top: 17.v,
            bottom: 38.v,
          ),
          child: SizedBox(
            width: 66.h,
            child: Divider(
              indent: 16.h,
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: CustomTextFormField(
        controller: userNameController,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: CustomTextFormField(
        controller: emailController,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: CustomTextFormField(
        controller: passwordController,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: CustomTextFormField(
        controller: confirmpasswordController,
        textInputAction: TextInputAction.done,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign up",
      margin: EdgeInsets.only(
        left: 50.h,
        right: 48.h,
      ),
      alignment: Alignment.center,
    );
  }

  /// Navigates to the androidLargeOneScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeOneScreen);
  }
}
