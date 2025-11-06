import 'package:flutter/material.dart';
import '../Account/log_in.dart';
import '../Account/signup.dart';
import '../Home/Screen/HomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/svg/chick.jpg',
                height: 120,
              ),
              const SizedBox(height: 40),
              buttonItem('دخول زائر', Colors.blue, context, const HomePage()),
              const SizedBox(height: 20),
              buttonItem('تسجيل دخول', Colors.blue, context, const LogInPage()),
              const SizedBox(height: 20),
              // ✅ هنا ربطنا الزر بصفحة Signup
              buttonItem('إنشاء حساب', Colors.blue, context, Signup()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonItem(
      String text, Color color, BuildContext context, Widget? page) {
    return SizedBox(
      width: 180,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          if (page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
