import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/level_screen_controller.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class MCQWidget extends StatelessWidget {
  final String question;
  final List<String> options;
  final int questionIndex;

  const MCQWidget({super.key,
    required this.question,
    required this.options,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LevelScreenController>(
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: const TextStyle(
                color: CustomAppColor.kWhiteColor,
                fontFamily: CustomTextSizing.kPoppinsFontFamily,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Column(
              children: options.asMap().entries.map((entry) {
                final index = entry.key;
                final option = entry.value;
                return GestureDetector(
                  onTap: () {
                    controller.handleOptionSelected(questionIndex, index);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: controller.selectedOptions[questionIndex] == index
                            ? CustomAppColor.kButtonGradientBottomColor
                            : Colors.white,
                        size: 12,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 6,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: CustomAppColor.buttonGradient,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: const Offset(0, 4),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              option,
                              style: const TextStyle(
                                color: CustomAppColor.kWhiteColor,
                                fontFamily: CustomTextSizing.kPoppinsFontFamily,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}
