import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_onboarding_widget.dart';
import '../utils/utils_methods.dart';

class WebViewScreenController extends GetxController{

  final GlobalKey webViewKey = GlobalKey();
  InAppWebViewController? webViewController;
  PullToRefreshController? pullToRefreshController;
  Rx<String> url = "".obs;
  RxDouble progress = 0.0.obs;
  RxString initUrl = "".obs;
  String backIcon=IconImage.get('back_icon.png');
  @override
  void onInit() {
    super.onInit();
initUrl.value = Get.arguments;
    pullToRefreshController = kIsWeb ||
        ![TargetPlatform.iOS, TargetPlatform.android]
            .contains(defaultTargetPlatform)
        ? null
        : PullToRefreshController(

      onRefresh: () async {
        if (defaultTargetPlatform == TargetPlatform.android) {
          webViewController?.reload();
        } else if (defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.macOS) {
          webViewController?.loadUrl(
              urlRequest:
              URLRequest(url: Uri.parse(initUrl.value)));
        }
      },
    );
  }
}