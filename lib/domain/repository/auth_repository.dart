import 'package:firebase_auth/firebase_auth.dart';

import '../../data/model/register_user_request_model.dart';
import '../entity/user_response_entity.dart';

abstract class AuthRepository {
  Future<User?> signInWithGoogle();
  bool isSignedInWithGoogle();
  String? getCurrentSignedInEmail();

  Future<UserResponseEntity?> getUserByEmail({required String email});

  Future<bool> registerUser({required RegisterUserRequestModel request});

  Future<bool> isUserRegistered();

  Future<bool> signOut();
}
