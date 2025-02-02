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


import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class OpenPatternIcons {
  const OpenPatternIcons._();

  static const iconPath = "icons/";

  static const iconExtension = ".svg";

  static const iconList = [
    "1_1_1_lc",
    "1_1_1_rc",
    "1_1_lc",
    "1_1_lpc",
    "1_1_rc",
    "1_1_rpc",
    "1_2_lc",
    "1_2_rc",
    "1_3_lc",
    "1_3_rc",
    "2_2_lc",
    "2_2_rc",
    "2_3_lc",
    "2_3_rc",
    "cdd",
    "k_tbl",
    "k",
    "k2tog",
    "k3tog",
    "kfb",
    "kfbf",
    "lli",
    "llip",
    "m1",
    "m1l",
    "m1p",
    "m1pl",
    "m1pr",
    "m1r",
    "p_tbl",
    "p",
    "p3tog_tbl",
    "p3tog",
    "pfb",
    "pfbf",
    "rli",
    "rlip",
    "sl_kwise_wyif",
    "sl_kwise",
    "sl_wyif",
    "sl",
    "ssk",
    "yo",
  ];

  static Future<String?> getPatternIconString(String name) async {
    if (iconList.contains(name)) {
      return (await rootBundle.loadString(
        'packages/open_pattern_icons/$iconPath$name$iconExtension'
      ));
    }

    return null;
  }

  static SvgLoader? getPatternIcon(String name) {
    if (iconList.contains(name)) {
      return SvgAssetLoader(
        '$iconPath$name$iconExtension',
        packageName: 'open_pattern_icons',
      );
    }

    return null;
  }

}
