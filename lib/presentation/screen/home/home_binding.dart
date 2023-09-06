import 'package:dio/dio.dart';
import 'package:finpro_edspert17_david/data/datasource/banner_remote_datasource.dart';
import 'package:finpro_edspert17_david/data/datasource/course_remote_datasource.dart';
import 'package:finpro_edspert17_david/data/repository/banner_repository_impl.dart';
import 'package:finpro_edspert17_david/data/repository/course_repository_impl.dart';
import 'package:finpro_edspert17_david/domain/repository/banner_repository.dart';
import 'package:finpro_edspert17_david/domain/repository/course_repository.dart';
import 'package:finpro_edspert17_david/domain/usecase/get_banners_usecase.dart';
import 'package:finpro_edspert17_david/domain/usecase/get_course_usecase.dart';
import 'package:finpro_edspert17_david/presentation/screen/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        bannersUsecase: Get.find<GetBannersUsecase>(),
        courseUsecase: Get.find<GetCourseUsecase>(),
      ),
    );

    Get.lazyPut<GetBannersUsecase>(
      () => GetBannersUsecase(repository: Get.find<BannerRepository>()),
    );
    Get.lazyPut<GetCourseUsecase>(
      () => GetCourseUsecase(repository: Get.find<CourseRepository>()),
    );
    Get.lazyPut<BannerRepository>(
      () => BannerRepositoryImpl(
          remoteDataSource: Get.find<BannerRemoteDataSource>()),
    );
    Get.lazyPut<CourseRepository>(
      () => CourseRepositoryImpl(
          remoteDatasource: Get.find<CourseRemoteDatasource>()),
    );
    Get.lazyPut<BannerRemoteDataSource>(
      () => BannerRemoteDataSource(client: Get.find<Dio>()),
    );
    Get.lazyPut<CourseRemoteDatasource>(
      () => CourseRemoteDatasource(client: Get.find<Dio>()),
    );
    Get.lazyPut<Dio>(
      () => Dio(),
    );
  }
}
