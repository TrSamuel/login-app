import 'package:flutter/material.dart';
import 'package:loginapp/constants/colorconst.dart';

InputDecoration inptFieldDecor({required String fieldTxt}) => InputDecoration(
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: greyColor),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
      ),
      hintText: fieldTxt,
      hintStyle: const TextStyle(fontSize: 24, color: greyColor,fontFamily: 'second-super-font'),
    );
