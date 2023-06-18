import 'package:flutter/material.dart';

import 'cart.dart';
import '../widgets/custom_gridview.dart';

class PopularTab extends StatefulWidget {
  const PopularTab({super.key});

  @override
  State<PopularTab> createState() => _PopularTabState();
}

class _PopularTabState extends State<PopularTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIconColor: MaterialStateColor.resolveWith(
                          (states) => states.contains(MaterialState.focused)
                              ? const Color(0xFFF48FB1)
                              : Colors.grey),
                      prefixIconColor: MaterialStateColor.resolveWith(
                          (states) => states.contains(MaterialState.focused)
                              ? const Color(0xFFF48FB1)
                              : Colors.grey),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                            width: 0.8, color: Color(0xFFF48FB1)),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                          width: 0.8,
                        ),
                      ),
                      hintText: 'Search',
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.clear)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                  height: 5,
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CartPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 20.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        backgroundColor: const Color(0xFFF48FB1)),
                    child: const Text(
                      'Cart',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomGridView(),
        ],
      ),
    );
  }
}
