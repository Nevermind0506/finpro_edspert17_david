import 'package:finpro_edspert17_david/domain/entity/banner_response_entity.dart';
import 'package:flutter/material.dart';

class BannerBuilder extends StatelessWidget {
  final List<BannerDataEntity> bannerList;
  const BannerBuilder({super.key, required this.bannerList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: bannerList.length,
        itemBuilder: (context, index) {
          final _banner = bannerList[index];
          return Image.network(
            _banner.eventImage,
          );
        },
      ),
    );
    ;
  }
}
