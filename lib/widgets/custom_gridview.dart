import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({super.key});

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "V-Neck Fit & Flare Dress",
      "price": "₹735",
      "image":
          "https://assets.ajio.com/medias/sys_master/root/20230103/6Bz3/63b35366f997ddfdbd0b98be/-473Wx593H-465410816-burgundy-MODEL4.jpg",
    },
    {
      "title": "Floral Print Fit & Flare Dress",
      "price": "₹827",
      "image":
          "https://assets.ajio.com/medias/sys_master/root/20230518/PEgY/64658007d55b7d0c63c17301/-473Wx593H-463282147-blue-MODEL.jpg",
    },
    {
      "title": "Printed Fit & Flare Dress with Fabric Belt",
      "price": "₹1359",
      "image":
          "https://assets.ajio.com/medias/sys_master/root/20220811/D4td/62f5162aaeb26921afdf9743/-473Wx593H-441146586-offwhite-MODEL.jpg",
    },
    {
      "title": "Floral Print Fit & Flare Dress",
      "price": "₹800",
      "image":
          "https://assets.ajio.com/medias/sys_master/root/20230313/rK6x/640f0282aeb26924e3ba61a9/-473Wx593H-465910011-red-MODEL.jpg",
    },
    {
      "title": "Floral Print V-neck Gown Dress with Bell Sleeves",
      "price": "₹1,256",
      "image":
          "https://assets.ajio.com/medias/sys_master/root/20220817/aEGF/62fc174baeb26917617922ea/-473Wx593H-464818638-black-MODEL.jpg",
    },
    {
      "title": "Printed Square-Neck Tiered Dress",
      "price": "₹1,116",
      "image":
          "https://assets.ajio.com/medias/sys_master/root/20230402/d6Vz/64298fe5711cf97ba702fa1b/-473Wx593H-466005179-pink-MODEL.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisExtent: 320,
        ),
        itemCount: gridMap.length,
        itemBuilder: (_, index) {
          return SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFFFCE4EC),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    child: Image.network(
                      "${gridMap.elementAt(index)['image']}",
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${gridMap.elementAt(index)['title']}",
                            style: Theme.of(context).textTheme.subtitle1),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text("${gridMap.elementAt(index)['price']}"),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              CupertinoIcons.heart,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
