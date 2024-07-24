import 'package:educational_app/custom_widget/custom_quiz_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LevelScreenController extends GetxController {
  var currentPage = 0.obs;
  RxList<MCQWidget> questions = <MCQWidget>[
     MCQWidget(
      question: "What is a correct syntax to output 'Hello World' in Java?",
      options: [
        "print ('Hello World');",
        "echo('Hello World');",
        "Console.WriteLine('Hello World');",
        "System.out.printin('Hello World');",
      ], questionIndex: 0,
    ),
     MCQWidget(
      question: "What is serialization and deserialization in Java?",
      options: [
        "It is a method for encrypting data.",
        "It is a way to speed up code execution.",
        "It is a form of database querying.",
        "It is the process of converting objects into a byte stream and back",
      ], questionIndex: 1,
    ),
     const MCQWidget(
      question: "What is a Java interface?",
      options: [
        "A class that can be instantiated",
        "A class with only static methods.",
        "A blueprint for a class with abstract methods.",
        "A class with private methods.",
      ],
      questionIndex: 2,
    ),
     const MCQWidget(
      question: "Which loop is used when you want to execute a block of code at least once in Java?",
      options: [
        "for loop",
        "while loop",
        "do-while loop",
        "if-else loop",
      ],
      questionIndex: 3,
    ),
     const MCQWidget(
      question: "What is the result of 5 + 3 * 2 in Java?",
      options: [
        "16",
        "11",
        "13",
        "10",
      ],
      questionIndex: 4,
    ),
     const MCQWidget(
      question: "What is a constructor in Java?",
      options: [
        "A method with no parameters.",
        "A method that returns a value.",
        "A method used to destroy objects.",
        "A special method called when an object is created",
      ],
      questionIndex: 5,
    ),
     const MCQWidget(
      question: "Which of the following is NOT a core interface in the Java Collections Framework?",
      options: [
        "List",
        "Set",
        "Map",
        "Array",
      ],
      questionIndex: 6,
    ),
     const MCQWidget(
      question: "What are Java annotations used for?",
      options: [
        "To provide comments in the code.",
        "To indicate deprecated code",
        "To add metadata to code elements.",
        "To create visual effects in GUI applications.",
      ],
      questionIndex: 7,
    ),
  ].obs;
  List<int> selectedOptions = List<int>.filled(8, -1);


  PageController pageController = PageController(initialPage: 0);

  void handleOptionSelected(int questionIndex, int optionIndex) {
    selectedOptions[questionIndex] = optionIndex;
    update();
  }
  void nextPage() {
  pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.linear);

  }
}