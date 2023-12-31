class RegisterUserRequestModel {
  final String fullName;
  final String email;
  final String schoolName;
  final String schoolLevel;
  final String schoolGrade;
  final String gender;
  final String? photoUrl;

  const RegisterUserRequestModel({
    required this.fullName,
    required this.email,
    required this.schoolName,
    required this.schoolLevel,
    required this.schoolGrade,
    required this.gender,
    this.photoUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'nama_lengkap': fullName,
      'email': email,
      'nama_sekolah': schoolName,
      'jenjang': schoolLevel,
      'kelas': schoolGrade,
      'gender': gender,
      'foto': photoUrl,
    };
  }

  factory RegisterUserRequestModel.fromMap(Map<String, dynamic> map) {
    return RegisterUserRequestModel(
      fullName: map['fullName'] as String,
      email: map['email'] as String,
      schoolName: map['schoolName'] as String,
      schoolLevel: map['schoolLevel'] as String,
      schoolGrade: map['schoolGrade'] as String,
      gender: map['gender'] as String,
      photoUrl: map['photoUrl'] as String,
    );
  }
}
