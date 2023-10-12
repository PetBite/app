class PetFoodData {
  PetFoodData({
    required this.id,
    required this.name,
    required this.price,
    required this.brand,
    required this.pros,
    required this.cons,
    required this.imagePath,
  });

  String id;
  String name;
  double price;
  String brand;
  String pros;
  String cons;
  String imagePath;
}

class PetFoodDB {
  static final List<PetFoodData> _petfood = [
    PetFoodData(
        id: 'pet-food-001',
        name: 'Cesar Small Breed Dry Dog Food',
        price: 1.03,
        brand: 'Cesar',
        pros: 'All natural ingredients, contains vitamins and minerals',
        cons: 'Not the best for pets who have sensitive stomachs',
        imagePath: 'assets/images/cesar.jpg'),
    PetFoodData(
        id: 'pet-food-002',
        name: "Hill's Science Diet",
        price: 3.60,
        brand: "Hill's",
        pros: 'Research-based nutrition assures good balance of nutrients, reputation for quality and safety, good ingredient quality',
        cons: 'Expensive brand of dog food, not good if looking for a natural, organic diet',
        imagePath: 'assets/images/hills.jpg'),
    PetFoodData(
        id: 'pet-food-003',
        name: "Pedigree dog food",
        price: 0.90,
        brand: "Pedigree",
        pros: 'High availability, affordable compared to other brands, appears to have a good taste for many dogs',
        cons: 'Lower ingredient quality, not ideal nutritional balance, health concerns',
        imagePath: 'assets/images/pedigree.jpg'),
    PetFoodData(
        id: 'pet-food-004',
        name: "Purina Pro Plan",
        price: 2.01,
        brand: "Purina",
        pros: 'High quality ingredients, research driven nutrient composition, high availability',
        cons: 'Relatively expensive, not suitable for all dogs, artificial additives present',
        imagePath: 'assets/images/purina.png'),
  ];

  PetFoodData getPetFoodById(String id) {
    return PetFoodDB._petfood.firstWhere((element) => element.id == id);
  }

  static List<String> getPetFoodIDs() {
    return PetFoodDB._petfood.map((element) => element.id).toList();
  }
}

PetFoodDB petFoodDB = PetFoodDB();
