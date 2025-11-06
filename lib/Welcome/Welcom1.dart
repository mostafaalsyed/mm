
import 'package:flutter/material.dart';
import 'login_page.dart'; // صفحة الأزرار الثلاثة
//معناها ان الصفحه دي مافيهاش حاله تغير
class Welcom1 extends StatelessWidget {
  const Welcom1({super.key});//دا كونسترمتور للودجت لو حبيتي ال keyبيستخدم لتحديد المفتاح

  @override
  Widget build(BuildContext context) {//دي داله اللي تبني واجهه الصفحه uiوكل ودجت بترجعها هنا بتظهر علي الشاشه
    return Scaffold(//هو الهيكل الرئيسي لاي صفحه في flutter
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,//الخلفيه شفافه ومفيش ظل
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//عشان العناصر تتوسط عموديا في النص
          children: [
            Image.asset(
              'assets/svg/chick.jpg', // ضع الصورة هنا داخل مجلد assets
              height: 120,
            ),
            const SizedBox(height: 20),
            const Text(
              'أهلاً بك',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 200,//العرض
              height: 50,//ارتفاع
              child: ElevatedButton(//زر مرفوع عادي
                onPressed: () {//بيحدد ايه الي يحصل لما المستخدم يضغط عليه
                  Navigator.push(//داله التنقل بين الصفاحات في فلاتر
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'التالي',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
