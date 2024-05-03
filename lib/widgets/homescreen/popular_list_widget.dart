import 'package:flutter/material.dart';

class PopularListWidget extends StatelessWidget {
  const PopularListWidget(
      {super.key,
      required this.listTitle,
      required this.listName,
      required this.listPhoto});

  final String listTitle;
  final List listName;
  final List listPhoto;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            listTitle,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: listName.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 12,
                        top: 10,
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                              image: AssetImage(listPhoto[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(listName[index]),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
