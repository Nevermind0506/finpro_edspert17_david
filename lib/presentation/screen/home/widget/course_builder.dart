import 'package:finpro_edspert17_david/domain/entity/course_response_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseBuilder extends StatelessWidget {
  final List<CourseDataEntity> courseList;
  const CourseBuilder({super.key, required this.courseList});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final course = courseList[index];
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          height: 96,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Container(
                height: 53,
                width: 53,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F7F8),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course.majorName,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '${course.jumlahDone} / ${course.jumlahMateri} Paket Latihan Soal',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8E8E8E),
                      ),
                    ),
                    const SizedBox(height: 11),
                    LinearProgressIndicator(
                      value: 0.5,
                      color: Color(0xFF3A7FD5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
    ;
  }
}
