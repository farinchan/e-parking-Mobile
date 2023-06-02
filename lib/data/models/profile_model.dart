class Profile {
  final String messsage;
  final Result result;

  Profile({
    required this.messsage,
    required this.result,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        messsage: json["messsage"],
        result: Result.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "messsage": messsage,
        "result": result.toJson(),
      };
}

class Result {
  final String uid;
  final String userNama;
  final String userEmail;
  final String userPassword;
  final String userPhone;
  final String telegramToken;
  final bool userStatus;

  Result({
    required this.uid,
    required this.userNama,
    required this.userEmail,
    required this.userPassword,
    required this.userPhone,
    required this.telegramToken,
    required this.userStatus,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        uid: json["uid"],
        userNama: json["user_nama"],
        userEmail: json["user_email"],
        userPassword: json["user_password"],
        userPhone: json["user_phone"],
        telegramToken: json["telegram_token"],
        userStatus: json["user_status"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "user_nama": userNama,
        "user_email": userEmail,
        "user_password": userPassword,
        "user_phone": userPhone,
        "telegram_token": telegramToken,
        "user_status": userStatus,
      };
}
