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
  List<String> pros;
  List<String> cons;
  String imagePath;
}

class PetFoodDB {
  static final List<PetFoodData> _petfood = [
    PetFoodData(
        id: 'pet-food-001',
        name: 'Cesar Small Breed Dry Dog Food',
        price: 1.03,
        brand: 'Cesar',
        pros: [
          'Formulated for Small Breeds',
          "Many small dogs enjoy the flavor.",
          "Often comes in resealable bags for freshness.",
          "Offers a range of flavors and formulas.",
          "Often lists real meat as a primary ingredient.",
        ],
        cons: [
          " Can be pricier per pound than some other brands.",
          "Some formulations may contain fillers or by-products.",
          "Potential for artificial colors, flavors, or preservatives.",
          "Not always grain-free, which some owners avoid.",
          "Not suitable for larger dog breeds.",
        ],
        imagePath: 'assets/images/cesar.jpg'),
    PetFoodData(
        id: 'pet-food-002',
        name: "Hill's Science Diet",
        price: 3.60,
        brand: "Hill's",
        pros: [
          "Developed with a research-based approach.",
          "Tailored for various life stages and health needs.",
          "Known for rigorous safety checks and standards.",
          "Often endorsed by veterinarians.",
          "Uses quality protein sources and beneficial additives.",
        ],
        cons: [
          "Typically more expensive than many commercial brands.",
          "Some formulations contain grains which some owners avoid.",
          "Potential use of fillers or by-products in some recipes.",
          "Might not fit all dogs' specific dietary needs.",
          "Fewer organic or limited-ingredient choices compared to niche brands.",
        ],
        imagePath: 'assets/images/hills.jpg'),
    PetFoodData(
        id: 'pet-food-003',
        name: "Pedigree dog food",
        price: 0.90,
        brand: "Pedigree",
        pros: [
          "Cost-effective compared to many brands.",
          "Easy to find in stores and online.",
          "Range of products for different life stages and preferences.",
          "Many dogs enjoy its flavor.",
          "Supports dog adoption through initiatives.",
        ],
        cons: [
          "Often contains fillers, by-products, and grains.",
          "Might not be optimal compared to premium brands.",
          "Has had product recalls in the past.",
          "Some reports associate it with health issues.",
          "Not ideal for dogs with grain sensitivities.",
        ],
        imagePath: 'assets/images/pedigree.jpg'),
    PetFoodData(
        id: 'pet-food-004',
        name: "Purina Pro Plan",
        price: 2.01,
        brand: "Purina",
        pros: [
          "Formulated based on extensive pet nutrition research.",
          "Often lists real meat as the primary ingredient.",
          "Offers specific formulas for different needs and life stages.",
          "Accessible in many stores and online.",
          "Many dogs favor its taste.",
        ],
        cons: [
          "Pricier than some of Purina's other lines.",
          "Some recipes may have grains or by-products.",
          "Has experienced product recalls in the past.",
          "Some dogs might react to specific ingredients.",
          "Some formulas might have artificial colors or flavors.",
        ],
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
