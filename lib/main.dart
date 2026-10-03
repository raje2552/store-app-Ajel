import 'package:flutter/material.dart';
import 'package:untitled5/detail_product_screen.dart';
import 'package:untitled5/login_screen.dart';
import 'package:untitled5/signup_secreen.dart';
import 'package:untitled5/widgets/cred_productWidget.dart';
import 'main_dashboard_screen.dart';




void main() => runApp(setSecreen());


class setSecreen extends StatelessWidget {
  const setSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/main_dashboard',
      routes: {
        '/login'  : (context) => login_secreen(),
        '/sign_up' : (context) => sign_up_screeen(),
        '/main_dashboard' : (context) => Main_Dashboard(),
        '/detail_product' : (context) => Detail_Product(),
        '/Cred_Product_dev' : (context) => CredProduct(name_Image: 'assets/images/shart_image.png',
        title_product: 'Regular Fit Slogan', sizeProdect: 'Size L',price: "\$1,190",
        )

      },
    );
  }
}
