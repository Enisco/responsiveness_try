import 'package:flutter/material.dart';

double screenWidth(BuildContext context) {
  // TODO: "Comment"
  //To create the width of the screen, Note always set it under build
  // methods, so that it can rebuild the screen every time
  return MediaQuery.of(context).size.width;
}

double screenHeight(BuildContext context) {
  // TODO: "Comment"
  //To create the height of the screen, Note always set it under build
  // methods, so that it can rebuild the screen every time
  return MediaQuery.of(context).size.height;
}
