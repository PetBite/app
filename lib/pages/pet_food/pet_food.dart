import 'package:app/pages/pet_food/detailed_pet_food.dart';
import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class PetFood extends StatefulWidget {
  const PetFood({Key? key}) : super(key: key);

  static const routeName = '/pet_food';

  @override
  State<PetFood> createState() => _PetFoodState();
}

class _PetFoodState extends State<PetFood> {
  List<String> search = ['healthy', 'vet recommended', 'Purina'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: <Widget>[
          Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                  padding: const EdgeInsets.all(16.0),
                ),
                onPressed: ColorScheme.light,
                child: const Text('Filter'),
              ),
              Flexible(
                flex: 7,
                child: SearchAnchor(builder:
                    (BuildContext context, SearchController controller) {
                  return SearchBar(
                    controller: controller,
                    onTap: () {
                      controller.openView();
                    },
                    leading: const Icon(Icons.search),
                  );
                }, suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return List<ListTile>.generate(3, (int index) {
                    final String word = search.elementAt(index);
                    return ListTile(
                      title: Text(word),
                      onTap: () {
                        setState(() {
                          controller.closeView(word);
                        });
                      },
                    );
                  });
                }),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 700,
            child: GridView.count(
              childAspectRatio: 7 / 6,
              crossAxisCount: 2,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Material(
                      elevation: 10,
                      child: _buildItem('assets/images/cesar.jpg', 'cesar',
                          '\$8.99', context)),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Material(
                    elevation: 10,
                    child: _buildItem(
                        'assets/images/hills.jpg', 'hills', '\$10.79', context),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Material(
                    elevation: 10,
                    child: _buildItem('assets/images/pedigree.jpg', 'pedigree',
                        '\$9.49', context),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Material(
                    elevation: 10,
                    child: _buildItem('assets/images/purina.png', 'purina',
                        '\$11.15', context),
                  ),
                ),
              ],
            ),
            /*
              child: ListView(children: <Widget>[
                Row(children: [
                  SizedBox(
                      height: 140,
                      child: ListView(children: <Widget>[
                        Image.asset('assets/images/cesar.jpg'),
                        const Text('cesar'),
                        const Text('\$8.99'),
                      ])),
                  SizedBox(
                      height: 140,
                      child: ListView(children: <Widget>[
                        Image.asset('assets/images/hills.jpg'),
                        const Text('hills'),
                        const Text('\$10.79'),
                  ])),
                ]),
                Row(children: [
                  SizedBox(
                      height: 140,
                      child: ListView(children: <Widget>[
                        Image.asset('assets/images/pedigree.jpg'),
                        const Text('pedigree'),
                        const Text('\$9.49'),
                  ])),
                  SizedBox(
                      height: 140,
                      child: Column(children: <Widget>[
                        Image.asset('assets/images/purina.png'),
                        const Text('purina'),
                        const Text('\$11.15'),
                  ])),
                ])
              ]))

               */
          )
        ]),
      ),
    );
  }

  Widget _buildItem(
      String img, String name, String price, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PetFoodPage()));
      },
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Image.asset(img),
          ),
          Expanded(
            flex: 1,
            child: Text(name),
          ),
          Expanded(
            flex: 1,
            child: Text(price),
          ),
        ],
      ),
    );
  }
}
