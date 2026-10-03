import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled5/widgets/cred_productWidget.dart';
import 'package:untitled5/widgets/listfalterwidget.dart';
import 'package:untitled5/widgets/titlePageWidget.dart';

class Main_Dashboard extends StatefulWidget {
  Main_Dashboard({super.key});

  List<String> list_Prodact = [
    'All',
    'Tshirts',
    'Jeans',
    'Shoes',
  ];

  @override
  State<Main_Dashboard> createState() => _Main_DashboardState();
}

class _Main_DashboardState extends State<Main_Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Gap(59),

            TitlePage(
              title: 'Discover',
              FamilyForText: 'ReadexPro',
              fontSizeText: 32,
              fontWeightText: FontWeight.w600,
            ),

            const Gap(16),

            // Search
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for clothes...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.tune,
                  ),
                ),
              ],
            ),

            const Gap(16),

            // Categories
            SizedBox(
              height: 50,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,

                itemCount: widget.list_Prodact.length,

                itemBuilder: (context, index) {
                  return Contear_for_item_falter(
                    text: Text(
                      widget.list_Prodact[index],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
            ),

            const Gap(16),

            // Products
            Expanded(
              child: ListView.builder(
                itemCount: 5,

                itemBuilder: (context, index) {
                  return CredProduct(
                    name_Image:
                    'assets/images/shart_image.png',
                    title_product:
                    'Regular Fit Slogan',
                    sizeProdect:
                    'Size L',
                    price:
                    '\$1,190',
                  );
                },
              ),
            ),
          Gap(16),
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 0)
            ,child:Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                        Text('Home')
                      ],

                    ),
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.credit_card)),
                        Text('Cart')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.account_circle)),
                        Text('Account')
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Gap(29)
          ],
        ),
      ),
    );
  }
}
