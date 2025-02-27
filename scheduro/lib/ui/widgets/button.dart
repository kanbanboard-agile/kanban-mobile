import 'package:flutter/material.dart';
import 'package:scheduro/shared/themes.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      ),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const CustomTextWidget({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 24,
      margin: EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Text(
          title,
          style: greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
        ),
      ),
    );
  }
}
