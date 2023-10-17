import 'package:get/get.dart';

class CollectionScreenController extends GetxController {
  List<String> subCollection = [
    'All',
    'Sweaters',
    'Jackets',
    'FootWear',
    'Sleepers'
  ];

  RxInt selectedSubCategoryId = 0.obs;
}
