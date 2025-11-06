import 'package:flutter/material.dart';
import 'signup.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(),
        backgroundColor: Colors.white,

        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              header(context),
              inputField(context),
              forgetPassword(context),
              signUp(context),
            ],
          ),
        ),
      ),
    );
  }


  Widget header(context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "مدير بيانات الطيور",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }


  Widget inputField(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              hintText: 'عنوان بريدك الإلكتروني',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              prefixIcon: const Icon(Icons.email_outlined),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            textAlign: TextAlign.right,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'كلمة المرور',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              prefixIcon: const Icon(Icons.lock),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('تم تسجيل الدخول بنجاح ✅')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
            child: const Text(
              'تسجيل الدخول إلى حسابك',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),

    );
  }


  Widget forgetPassword(context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        "نسيت كلمة السر؟",
        style: TextStyle(color: Colors.blue),
      ),
    );
  }


  Widget signUp(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("ليس لديك حساب؟"),
        TextButton(
          onPressed: () {

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signup()),
            );
          },
          child: const Text(
            "إنشاء حساب",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
