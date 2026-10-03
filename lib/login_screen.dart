import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled5/widgets/titlePageWidget.dart';

class login_secreen extends StatefulWidget {
  const login_secreen({super.key});

  @override
  State<login_secreen> createState() => _login_secreenState();
}

class _login_secreenState extends State<login_secreen> {
  Icon icon_password_field = Icon(Icons.visibility_off, color: Colors.grey);
  bool is_visibile_password = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 24),

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Gap(59),
        TitlePage(title: 'Login to your account',
          FamilyForText: 'ReadexPro',
          fontSizeText:32,
          fontWeightText:FontWeight.w600,
          letterSpacingChart: -1.5,
        ),
      Gap(8),
      Text(
        'It’s great to see you again.',
        style: TextStyle(
          color: Colors.grey,
          fontFamily: 'ReadexPro',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      Gap(24),

      Text(
        'Email',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'ReadexPro',
          fontWeight: FontWeight.w500,
        ),
      ),

      Gap(4),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hint: Text(
            'Enter your email address',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'ReadexPro',
            ),
          ),
        ),
      ),

      Gap(16),
      Text(
        'Password',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'ReadexPro',
          fontWeight: FontWeight.w500,
        ),
      ),
      Gap(4),
      TextField(
        obscureText: is_visibile_password,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                if (is_visibile_password == true) {
                  is_visibile_password = false;
                  icon_password_field = Icon(Icons.visibility);
                } else {
                  is_visibile_password = true;
                  icon_password_field = Icon(Icons.visibility_off);
                }
              });
            },
            icon: icon_password_field,
          ),
          hint: Text(
            'Enter your password',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'ReadexPro',
            ),
          ),
        ),
      ),

      Gap(42),

      InkWell(
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                fontFamily: 'DM_Sans',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Gap(24),
      BottomAppBar(
        color: Colors.transparent,
        child: Container(
          alignment: AlignmentGeometry.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'ReadexPro',
                ),
              ),
              Gap(4),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'ReadexPro',
                  ),
                ),
              ),
            ],
          ),
        ),
      )

      ],
    ),)
    ,
    );
  }
}
