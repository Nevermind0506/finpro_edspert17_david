import 'package:finpro_edspert17_david/domain/repository/banner_repository.dart';
import 'package:finpro_edspert17_david/domain/repository/course_repository.dart';

import '../entity/banner_response_entity.dart';
import '../entity/course_response_entity.dart';

class GetCourseUsecase {
  final CourseRepository repository;

  const GetCourseUsecase({required this.repository});

  Future<CourseResponseEntity> call(String majorName) async =>
      await repository.getCourses(majorName);
}
