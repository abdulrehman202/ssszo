import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssszo/presentation/controllers/collection_screen_controlle.dart';
import 'package:ssszo/presentation/managers/asset_manager.dart';
import 'package:ssszo/presentation/widgets/choice_container.dart';
import 'package:ssszo/presentation/widgets/custom_image_widget.dart';
import 'package:ssszo/presentation/widgets/custom_widgets.dart';

class CollectionScreen extends StatefulWidget {
  String title;
  CollectionScreen({required this.title, super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  CollectionScreenController collectionScreenController =
      CollectionScreenController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Clicky', actionWidgets: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up_sharp)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
      ]),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        coverPhoto(),
        categoriesChipsContainer(),
        listGridOfCollections(),
      ],
    );
  }

  Widget listGridOfCollections() {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) => collectionContainer()),
      ),
    );
  }

  Widget collectionContainer() {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border.all(color: const Color(0xffd3d3d3))),
              height: 100,
              width: 100,
              child: customAssetImage(AssetManager.fashionPhotoPath)),
          const Text('Jacket'),
          Expanded(
            child: const Text(
              'Rs 4000',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rs 5000 | ',
                  style: TextStyle(),
                ),
                Text(
                  '(-20%)',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget coverPhoto() {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
          child: customAssetImage(AssetManager.coverPhotoPath),
        ),
        Text(
          widget.title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        )
      ],
    );
  }

  Widget categoriesChipsContainer() {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: collectionScreenController.subCollection.length,
                itemBuilder: (context, index) {
                  return Obx(
                    () => GestureDetector(
                      onTap: () => collectionScreenController
                          .selectedSubCategoryId.value = index,
                      child: ChoiceContainer(
                          categoryName:
                              collectionScreenController.subCollection[index],
                          isSelected: collectionScreenController
                                  .selectedSubCategoryId.value ==
                              index),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
