class PetData {
  PetData({
    required this.id,
    required this.name,
    required this.age,
    required this.gender,
    required this.breed,
    required this.weight,
    required this.height,
    required this.color,
    required this.imagePath,
    required this.ownerid,
  });

  String id;
  String name;
  int age;
  String gender;
  String breed;
  double weight;
  double height;
  String color;
  String imagePath;
  String ownerid;
}

class PetDB {
  static final List<PetData> _pets = [
    PetData(
      id: 'pet-001',
      name: 'Kurt',
      age: 9,
      gender: 'male',
      breed: 'Siberian Husky',
      weight: 20,
      height: 53,
      color: 'white',
      imagePath: 'assets/images/homepagepic.png',
      ownerid: 'owner-001',
    )
  ];

  PetData getPetById(String id) {
    return PetDB._pets.firstWhere((element) => element.id == id);
  }

  static List<String> getPetIDs() {
    return PetDB._pets.map((element) => element.id).toList();
  }
}

PetDB petDB = PetDB();
