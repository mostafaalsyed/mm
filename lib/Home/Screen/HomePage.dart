import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import '../Add group/add group.dart';
import '../Cost Calculation.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  Widget buildMenuItem(String title, String imagePath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'مدير بيانات الطيور',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade600,
        ),
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            children: [
              buildMenuItem("مياة", "assets/svg/waters.jpg", () {}),
              buildMenuItem("إنشاء مجموعة", "assets/svg/4444.jpg", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddGroupPage()),
                );
              }),

              buildMenuItem("استهلاك العلف", "assets/svg/feed1.jpg", () {}),
              buildMenuItem("الأمراض", "assets/svg/illnesses.png", () {}),
              buildMenuItem("درجة الحرارة", "assets/svg/tt.png", () {}),
              buildMenuItem("كثافة",
                  "assets/svg/fc160b17-b2c8-4574-85e7-315d97665e92.jpg", () {}),
              buildMenuItem("ساعات الظلام", "assets/svg/light bulb.jpg", () {}),
              buildMenuItem("الوزن", "assets/svg/madhan.jpg", () {}),
              buildMenuItem("التحصين", "assets/svg/treatmer.png", () {}),
              buildMenuItem("الأسعار", "assets/svg/rr.png", () {}),
              buildMenuItem("الاستهلاك الكلي", "assets/svg/feed3.jpg", () {}),
              buildMenuItem("حساب التكاليف ", "assets/svg/feed3.jpg", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodayCostScreen()),
                );
              }),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.white,
          buttonBackgroundColor: Colors.blue,
          height: 60,
          items: const [
            CurvedNavigationBarItem(
              child: Icon(Icons.home, color: Colors.black),
              label: 'Home',
              labelStyle: TextStyle(color: Colors.black),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.receipt_long, color: Colors.black),
              label: 'Records',
              labelStyle: TextStyle(color: Colors.black),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.coronavirus, color: Colors.black),
              label: 'Diseases',
              labelStyle: TextStyle(color: Colors.black),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.attach_money, color: Colors.black),
              label: 'Prices',
              labelStyle: TextStyle(color: Colors.black),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.show_chart, color: Colors.black),
              label: 'Weight',
              labelStyle: TextStyle(color: Colors.black),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}