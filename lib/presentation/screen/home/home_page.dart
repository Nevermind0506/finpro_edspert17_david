import 'package:finpro_edspert17_david/presentation/screen/home/home_controller.dart';
import 'package:finpro_edspert17_david/presentation/screen/home/widget/banner_builder.dart';
import 'package:finpro_edspert17_david/presentation/screen/home/widget/course_builder.dart';
import 'package:finpro_edspert17_david/presentation/screen/home/widget/welcoming_widget.dart';
import 'package:finpro_edspert17_david/presentation/screen/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7F8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hai, Fadil',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Selamat Datang',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: CircleAvatar(
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomingWidget(),
              const SizedBox(height: 16),
              SectionTitle(title: 'Terbaru'),
              SizedBox(height: 10),
              GetBuilder<HomeController>(
                init: homeController,
                initState: (state) => homeController.getBanners(),
                builder: (hCon) {
                  final bannerList = hCon.banner;

                  return bannerList.isEmpty
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : BannerBuilder(bannerList: bannerList);
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SectionTitle(title: 'Pilih Pelajaran'),
                  TextButton(onPressed: () {}, child: const Text('Lihat Semua'))
                ],
              ),
              const SizedBox(height: 16),
              GetBuilder<HomeController>(
                  init: homeController,
                  initState: (state) => homeController.getCourse('IPA'),
                  builder: (cHome) {
                    final courseList = cHome.courseList;

                    return courseList.isEmpty
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : CourseBuilder(courseList: courseList);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
