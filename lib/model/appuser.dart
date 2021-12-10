class AppUser {
  late String _nome;
  late String _email;
  late String _senha;

  AppUser({nome, email, senha}) {
    _nome = nome ?? "";
    _email = email ?? "";
    _senha = senha ?? "";
  }

  String get nome => _nome;

  set nome(String value) => _nome = value;

  String get email => _email;

  set email(String value) => _email = value;

  String get senha => _senha;

  set senha(String value) => _senha = value;
}
