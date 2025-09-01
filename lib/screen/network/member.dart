class Member {
  String email;
  String password;
  String description;

  Member(this.email, this.password, this.description);

  factory Member.fromJson(Map<String, dynamic> json) {
    return Member(
      json["email"] ?? "", 
      json["password"] ?? "", 
      json["description"] ?? ""
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "password": password,
      "description": description,
    };
  }

  @override
  String toString() {
    return 'Member{email: $email, password: $password, description: $description}';
  }
}