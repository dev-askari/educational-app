import 'package:get/get.dart';
import '../utils/utils_methods.dart';
import 'dashboard_screen_controller.dart';

class LessonScreenController extends GetxController{
  final DashboardScreenController dashboardScreenController = Get.find<DashboardScreenController>();
  String lessonJavaImage=Img.get('lesson_java.png');
  String javaCollectionImage=Img.get('java_collection.png');
  String javaListImage=Img.get('java_list.png');
  String javaLoopImage=Img.get('loop.png');
  String backIcon=IconImage.get('back_icon.png');

}