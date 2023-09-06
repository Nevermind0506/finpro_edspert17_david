import 'package:finpro_edspert17_david/data/datasource/banner_remote_datasource.dart';
import 'package:finpro_edspert17_david/data/model/banner_response_model.dart';
import 'package:finpro_edspert17_david/domain/entity/banner_response_entity.dart';

import '../../domain/repository/banner_repository.dart';

class BannerRepositoryImpl implements BannerRepository {
  final BannerRemoteDataSource remoteDataSource;

  const BannerRepositoryImpl({required this.remoteDataSource});

  @override
  Future<BannerResponseEntity> getBanners() async {
    final bannerModel = await remoteDataSource.getBanners();
    final data = BannerResponseEntity(
      message: bannerModel.message ?? '',
      status: bannerModel.status ?? -1,
      data: List<BannerDataModel>.from(bannerModel.data ?? [])
          .map(
            (e) => BannerDataEntity(
              eventId: e.eventId ?? '',
              eventTitle: e.eventTitle ?? '',
              eventDescription: e.eventDescription ?? '',
              eventImage: e.eventImage ?? '',
              eventUrl: e.eventUrl ?? '',
            ),
          )
          .toList(),
    );
    return data;
  }
}
