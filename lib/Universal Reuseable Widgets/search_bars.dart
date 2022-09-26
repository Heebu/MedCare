import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dimensions.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.text,
    required this.widget,
  }) : super(key: key);
  final String text;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue.shade50,
      ),
      height: Dimensions.height70,
      width: Dimensions.width100 * 5,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 20,
        ),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 200,
              child: TextField(
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.search_rounded,
                    size: 30,
                  ),
                  enabledBorder: InputBorder.none,
                  hintText: text,
                ),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return widget;
                    });
              },
              icon: const Icon(
                Icons.tune,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
