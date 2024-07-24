import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller/web_view_screen_controller.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';
class InAppWebViewExampleScreen extends GetView<WebViewScreenController>{
  const InAppWebViewExampleScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: CustomAppColor.appGradient,
      ),
      child: Scaffold(
        backgroundColor: CustomAppColor.kTransparentColor,
          appBar:  AppBar(
            automaticallyImplyLeading: false,
            iconTheme: const IconThemeData(color: CustomAppColor.kWhiteColor),
            title:  Row(
              children: [
                GestureDetector(
                    onTap: (){
                      Get.back();
                      },
                    child: ImageIcon(AssetImage(controller.backIcon), size: 17,)),
                const SizedBox(width: 30,),
                const Text('Lesson',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: CustomAppColor.kWhiteColor,
                    fontSize: 25.0,
                    fontFamily: CustomTextSizing.kPoppinsFontFamily,
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
          ),

          body: SafeArea(
              child: Stack(
                children: [
                  Obx(()=> InAppWebView(
                      key: controller.webViewKey,
                      initialUrlRequest:
                      URLRequest(url: Uri.parse(controller.initUrl.value)),
                      initialUserScripts: UnmodifiableListView<UserScript>([]),
                      pullToRefreshController:  controller.pullToRefreshController,
                      onWebViewCreated: (c) async {
                        controller.webViewController = c;
                      },
                      onLoadStart: (c, ur) async {

                          controller.url.value = ur.toString();

                      },
                      shouldOverrideUrlLoading:
                          (controller, navigationAction) async {
                        var uri = navigationAction.request.url!;
                        if (![
                          "http",
                          "https",
                          "file",
                          "chrome",
                          "data",
                          "javascript",
                          "about"
                        ].contains(uri.scheme)) {
                          if (await canLaunchUrl(uri)) {
                            // Launch the App
                            await launchUrl(
                              uri,
                            );
                            // and cancel the request
                            return NavigationActionPolicy.CANCEL;
                          }
                        }
                        return NavigationActionPolicy.ALLOW;
                      },
                      onLoadStop: (c, url) async {
                        controller.pullToRefreshController?.endRefreshing();
                          controller.url.value = url.toString();
                      },
                      onProgressChanged: (c, p) {
                        if (p== 100) {
                          controller.pullToRefreshController?.endRefreshing();
                        }
                          controller.progress.value = p/ 100;
                      },
                      onUpdateVisitedHistory: (c, url, isReload) {
                          controller.url.value = url.toString();
                      },
                      onConsoleMessage: (controller, consoleMessage) {
                        print(consoleMessage);
                      },
                    ),
                  ),
                  Obx(()=> controller.progress.value < 1.0
                        ? LinearProgressIndicator(value: controller.progress.value)
                        : Container(),
                  ),
                ],
              ))),
    );
  }
}