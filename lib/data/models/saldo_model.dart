

class Saldo {
    final String messsage;
    final Result result;

    Saldo({
        required this.messsage,
        required this.result,
    });

    factory Saldo.fromJson(Map<String, dynamic> json) => Saldo(
        messsage: json["messsage"],
        result: Result.fromJson(json["result"]),
    );

    Map<String, dynamic> toJson() => {
        "messsage": messsage,
        "result": result.toJson(),
    };
}

class Result {
    final int saldoId;
    final String uid;
    final int saldoSisa;
    final int saldoTerpakai;

    Result({
        required this.saldoId,
        required this.uid,
        required this.saldoSisa,
        required this.saldoTerpakai,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        saldoId: json["saldo_id"],
        uid: json["uid"],
        saldoSisa: json["saldo_sisa"],
        saldoTerpakai: json["saldo_terpakai"],
    );

    Map<String, dynamic> toJson() => {
        "saldo_id": saldoId,
        "uid": uid,
        "saldo_sisa": saldoSisa,
        "saldo_terpakai": saldoTerpakai,
    };
}
