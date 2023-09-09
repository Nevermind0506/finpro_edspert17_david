import '../../entity/user_response_entity.dart';
import '../../repository/auth_repository.dart';

class GetUserUsecase {
  final AuthRepository repository;

  const GetUserUsecase({required this.repository});

  Future<UserResponseEntity?> call(String email) async =>
      await repository.getUserByEmail(email: email);
}
