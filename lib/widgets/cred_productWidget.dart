import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CredProduct extends StatelessWidget {
  final String name_Image;
  final String title_product;
  final String sizeProdect;
  final String price;

  const CredProduct({
    super.key,
    required this.name_Image,
    required this.title_product,
    required this.sizeProdect,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed('detail_product');
      },
      child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          top: 14,
          bottom: 14,
        ),
        child: Row(
          children: [
            Image.asset(
              name_Image,
              height: 79,
              width: 83,
            ),

            const SizedBox(width: 10),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title_product,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'ReadexPro',
                          ),
                        ),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),

                  Text(
                    sizeProdect,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'ReadexPro',
                      fontSize: 12,
                    ),
                  ),

                  Gap(15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: 'ReadexPro',
                        ),
                      ),

                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove,
                              size: 20,
                            ),
                          ),

                          Text(
                            '1',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
