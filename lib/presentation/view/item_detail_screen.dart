import 'package:counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ssszo/presentation/managers/colors_manager.dart';
import 'package:ssszo/presentation/widgets/custom_button.dart';
import 'package:ssszo/presentation/widgets/custom_image_widget.dart';

class ItemDetailScreen extends StatefulWidget {
  const ItemDetailScreen({super.key});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: Wrap(
        direction: Axis.vertical,
        children: [
          CustomButton(
            text: 'Add to Cart',
            callback: () {},
          ),
          CustomButton(
            color: Colors.black,
            text: 'Buy Now',
            callback: () {},
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          color: ColorManager.primary_color,
        ),
        Container(
          margin: const EdgeInsets.all(20.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            children: [
              const SizedBox(
                height: 65.0,
              ),
              Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: customNetworkImage(
                        'https://img.freepik.com/free-photo/retro-living-room-interior-design_53876-145503.jpg?w=740&t=st=1680002125~exp=1680002725~hmac=07b10546162aea17fdab7978f87e9baea50c77c4780a1c7c5ea7e747237fc224')),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                'Jacket',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'PKR 4000',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Counter(
                    min: 0,
                    max: 10,
                    step: 1,
                    onValueChanged: print,
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Text(
                'Description',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'Item Description',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
