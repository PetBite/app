class CommunityData {
  CommunityData({
    required this.id,
    required this.name,
    required this.description,
    required this.imagePath,
  });

  String id;
  String name;
  String description;
  String imagePath;
}

class CommunityDB {
  final List<CommunityData> _communities = [
    CommunityData(
        id: 'community-001',
        name: 'Husky',
        description:
            'your go-to community for sharing stories, tips, and advice about the majestic Husky breed. Connect with fellow Husky enthusiasts, whether you are a seasoned owner or a curious admirer.',
        imagePath: 'assets/images/community1.jpg'),
    CommunityData(
        id: 'community-002',
        name: 'Shiba Inu',
        description:
            'Dive deep into the world of Shiba Inus with fellow enthusiasts. Share stories, seek advice, and embrace the captivating charm of this unique breed.',
        imagePath: 'assets/images/community2.jpg'),
    CommunityData(
        id: 'community-003',
        name: 'Corgi',
        description:
            'Unearth the magic of stumpy legs and big ears! Join the celebration, share tales, and discover the wonder that is the Corgi realm.',
        imagePath: 'assets/images/community3.jpg'),
    CommunityData(
        id: 'community-004',
        name: 'Akita',
        description:
            'Dive into our community dedicated to the powerful elegance of Akitas. Join us in the forum for vibrant discussions, cherished tales, and essential tips.',
        imagePath: 'assets/images/community4.jpg'),
  ];
  CommunityData getCommunityById(String id) {
    return communityDB._communities.firstWhere((element) => element.id == id);
  }

  List<String> getCommunityIDs() {
    return communityDB._communities.map((element) => element.id).toList();
  }
}

CommunityDB communityDB = CommunityDB();
