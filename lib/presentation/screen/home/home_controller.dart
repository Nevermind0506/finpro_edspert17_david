import 'package:finpro_edspert17_david/domain/entity/banner_response_entity.dart';
import 'package:finpro_edspert17_david/domain/usecase/get_banners_usecase.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GetBannersUsecase bannersUsecase;

  HomeController({required this.bannersUsecase});

  RxList<BannerDataEntity> banner = <BannerDataEntity>[].obs;

  void getBanners() async {
    final result = await bannersUsecase.call();
    banner.value = result.data;
    update();
  }
}
