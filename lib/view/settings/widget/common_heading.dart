import 'package:flutter/material.dart';

import '../../../controller/core/constant.dart';

Text commonHeading({required String title}) {
  return Text(title,
      style: CustomFuction.textStyleFuction(
          size: 18, fontWeight: FontWeight.w600));
}
