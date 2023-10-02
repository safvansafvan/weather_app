import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget loading() {
  return SizedBox(
    height: 150,
    width: 150,
    child: Lottie.asset('assets/loading.json'),
  );
}
