


import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

part 'extensions/shimmer_extension.dart';
part 'extensions/widget_extension.dart';
part 'extensions/align_extension.dart';
part 'extensions/text_extension.dart';
part 'get.dart';

void copyToClipboard(final String text) async => await Clipboard.setData(ClipboardData(text: text));