import 'package:flutter/material.dart';
import 'package:himanshiproject/main.dart';
import 'package:himanshiproject/model/tab_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TabModel>(
      builder: (context, tabModel, child) => SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 20.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            backgroundColor: const Color(0xFFF48FB1),
                          ),
                          child: const Text('Previous Tab'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          tabModel.tabController1!.animateTo(0,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 20.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          backgroundColor: const Color(0xFFF48FB1),
                        ),
                        child: const Text('First Tab'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) => Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6.0,
                        vertical: 6.0,
                      ),
                      child: Card(
                        elevation: 1.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: Image.network(
                                    "https://assets.ajio.com/medias/sys_master/root/20230402/d6Vz/64298fe5711cf97ba702fa1b/-473Wx593H-466005179-pink-MODEL.jpg"),
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Printed Square-Neck Tiered Dress',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Text(
                                      '₹1,116',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.delete,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
