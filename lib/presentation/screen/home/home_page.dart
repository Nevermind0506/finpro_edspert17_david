import 'package:finpro_edspert17_david/presentation/screen/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: GetBuilder<HomeController>(
          init: homeController,
          initState: (state) => homeController.getBanners(),
          builder: (c) {
            final banner = c.banner;

            return banner.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : SizedBox(
                    height: 150,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 10),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: banner.length,
                      itemBuilder: (context, index) {
                        final _banner = banner[index];
                        return Image.network(
                          _banner.eventImage,
                        );
                      },
                    ),
                  );
          }),
    );
  }
}
