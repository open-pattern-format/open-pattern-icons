/*
 * Copyright 2024 Scott Ware
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this library except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OpenPatternIcons {
  const OpenPatternIcons._();

  static const iconPath = "icons/";

  static const iconExtension = ".png";

  static const iconList = [
    "1_1_lc",
    "1_1_lpc",
    "1_1_lsc",
    "1_1_rc",
    "1_1_rpc",
    "1_1_rsc",
    "1_3_lc",
    "1_3_rc",
    "cdd",
    "k_tbl",
    "k",
    "m1",
    "m1l",
    "m1r",
    "none",
    "p_tbl",
    "p",
    "sl_kwise_wyif",
    "sl_kwise",
    "sl_wyif",
    "sl",
    "yo",
  ];

  static Image? getPatternIcon(String name) {
    if (iconList.contains(name)) {
      return Image.asset(
        '$iconPath$name$iconExtension',
        package: 'open_pattern_icons',
      );
    }

    return null;
  }

  static Future<Uint8List?> getPatternIconBytes(String name) async {
    if (iconList.contains(name)) {
      return (await rootBundle.load(
        'packages/open_pattern_icons/$iconPath$name$iconExtension'
      )).buffer.asUint8List();
    }

    return null;
  }

}
