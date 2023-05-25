class Usuario{

  int id;
  String nome;
  String email;
  String senha;
  String nasc;

  Usuario(this.id, this.nome, this.email, this.senha, this.nasc);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'senha': senha,
      'nasc': nasc,
    };
  }

  @override
  String toString() {
    return 'Dog{id: $id, nome: $nome, email: $email, senha: $senha, nasc: $nasc}';
  }

}