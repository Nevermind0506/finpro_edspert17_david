import 'package:finpro_edspert17_david/domain/entity/banner_response_entity.dart';
import 'package:finpro_edspert17_david/domain/entity/course_response_entity.dart';
import 'package:finpro_edspert17_david/domain/usecase/get_banners_usecase.dart';
import 'package:finpro_edspert17_david/domain/usecase/get_course_usecase.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GetBannersUsecase bannersUsecase;
  final GetCourseUsecase courseUsecase;

  HomeController({required this.bannersUsecase, required this.courseUsecase});

  RxList<BannerDataEntity> banner = <BannerDataEntity>[].obs;
  RxList<CourseDataEntity> courseList = <CourseDataEntity>[].obs;

  void getBanners() async {
    final result = await bannersUsecase.call();
    banner.value = result.data;
    update();
  }

  void getCourse(String majorName) async {
    final result = await courseUsecase.call(majorName);
    courseList(result.data);
    update();
  }
}
