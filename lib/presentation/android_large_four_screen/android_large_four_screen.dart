import 'package:flutter/material.dart';
import 'package:kabil_s_application1/core/app_export.dart';

class AndroidLargeFourScreen extends StatelessWidget {
  const AndroidLargeFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray400,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 39.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle17,
                height: 263.v,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
