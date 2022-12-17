class User {
  final String name;
  final String email;
  final String img;
  final double energyUsed2day;
  final double energyUsedInMonth;
  final int lastRecharge;
  const User(
      {required this.name,
      required this.img,
      required this.email,
      required this.energyUsed2day,
      required this.energyUsedInMonth,
      required this.lastRecharge});

  factory User.fromJson(Map<String, dynamic> data) {
    // note the explicit cast to String
    // this is required if robust lint rules are enabled
    final name = data['name'] as String;
    final img = data['img'] as String;
    final email = data['email'] as String;
    final energyUsed2day = data['energyUsed2day'] as double;
    final energyUsedInMonth = data['energyUsedInMonth'] as double;
    final lastRecharge = data['lastRecharge'] as int;
    return User(
        name: name,
        img: img,
        email: email,
        energyUsed2day: energyUsed2day,
        energyUsedInMonth: energyUsedInMonth,
        lastRecharge: lastRecharge);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'img': img,
      'email': email,
      'energyUsed2day': energyUsed2day,
      'energyUsedInMonth': energyUsedInMonth,
      'lastRecharge': lastRecharge
    };
  }
}
