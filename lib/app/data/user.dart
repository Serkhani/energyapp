class User {
  final String name;
  final String img;
  final double energyUsed2day;
  final double energyUsedInMonth;
  const User(
      {required this.name,
      required this.img,
      required this.energyUsed2day,
      required this.energyUsedInMonth});

  factory User.fromJson(Map<String, dynamic> data) {
    // note the explicit cast to String
    // this is required if robust lint rules are enabled
    final name = data['name'] as String;
    final img = data['img'] as String;
    final energyUsed2day = data['energyUsed2day'] as double;
    final energyUsedInMonth = data['energyUsedInMonth'] as double;
    return User(name: name, img: img, energyUsed2day: energyUsed2day, energyUsedInMonth: energyUsedInMonth);
  }


  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'img': img,
      'energyUsed2day': energyUsed2day,
      'energyUsedInMonth': energyUsedInMonth
    };
  }
}
