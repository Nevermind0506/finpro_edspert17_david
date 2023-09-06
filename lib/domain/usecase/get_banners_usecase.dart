import 'package:finpro_edspert17_david/domain/repository/banner_repository.dart';

import '../entity/banner_response_entity.dart';

class GetBannersUsecase {
  final BannerRepository repository;

  const GetBannersUsecase({required this.repository});

  Future<BannerResponseEntity> call() async => await repository.getBanners();
}
