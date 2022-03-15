import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String appTitle = 'Countdown Timer ⏳';

// The circular progress indicator dimensions for web
const double circularProgressIndicatorDimensionsForWeb = 400;
// This edge insets padding warps the 'TimerPicker' & 'CircularProgressIndicator' stack
const EdgeInsets edgeInsetsPadding = EdgeInsets.all(32.0);
// The elevated buttons edge insets padding (Left & Right control buttons)
const EdgeInsets elevatedButtonPadding = EdgeInsets.all(12.0);

// Countdown duration text style
const TextStyle countdownDurationTextStyle = TextStyle(
    color: Color(0xff070417), fontWeight: FontWeight.bold, fontSize: 40);
// Elevated Button text style
const TextStyle elevatedButtonTextStyle = TextStyle(color: Colors.white);

// Circular progress indicator startup color
const Color circularProgressIndicatorStartupColor = Color(0xfff1f1f1);
// Circular progress indicator head color
const Color circularProgressIndicatorHeadColor = Color(0xffFFD29D);
// Circular progress indicator value color
const Color circularProgressIndicatorValueColor = Colors.orange;
// Circular progress indicator done (complete) color
const Color circularProgressIndicatorDoneColor = Color(0xff29BAE2);
const Color circularProgressIndicatorBlackColor = Color(0xff00C12B);