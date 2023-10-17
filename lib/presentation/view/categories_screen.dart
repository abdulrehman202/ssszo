import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssszo/presentation/controllers/categories_controller.dart';
import 'package:ssszo/presentation/view/collection_screen.dart';
import 'package:ssszo/presentation/widgets/custom_widgets.dart';
import 'package:ssszo/presentation/widgets/main_category_widget.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  var controller = Get.put(CategoriesScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Clicky', actionWidgets: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up_sharp)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
      ]),
      body: ListView.builder(
          itemCount: controller.categoriesList.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () => Get.to(() =>
                  CollectionScreen(title: controller.categoriesList[index])),
              child: MainCategoryWidget(
                  color: controller.colorsList[index],
                  categoryName: controller.categoriesList[index]),
            );
          })),
    );
  }
}
