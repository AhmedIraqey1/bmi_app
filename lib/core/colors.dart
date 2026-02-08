import 'package:flutter/material.dart';

/*"abstract" to say this class cannot create object from him*/
abstract class AppColor {
  /*"static" to call this attribute without create object */
  static const Color backgroundColor = Color(0xFF0a0c21);
  static const Color primaryColor = Color(0xFFeb1555);
  static const Color cardColor = Color(0xFF1d1e33);
  static const Color whiteColor = Colors.white;
}

//AppColor.backgroundColor ---------> to call the atribute
