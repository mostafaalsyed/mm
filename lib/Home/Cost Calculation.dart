import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class TodayCostScreen extends StatefulWidget {
  @override
  _TodayCostScreenState createState() => _TodayCostScreenState();
}

class _TodayCostScreenState extends State<TodayCostScreen> {
  String? selectedGroup;
  String? selectedType;

  final groupNames = ['المجموعة 1', 'المجموعة 2', 'المجموعة 3'];
  final types = ['نوع 1', 'نوع 2', 'نوع 3'];

  int selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'حساب تكاليف اليوم',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true, // توسيط العنوان في أعلى الصفحة
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              // زر "حساب" في الأعلى جهة اليمين
              Align(
                alignment: Alignment.topRight,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // نفذ الحساب
                  },
                  icon: Icon(Icons.arrow_back),
                  label: Text('حساب'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4091F7),
                    minimumSize: Size(120, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              // حقل "اسم المجموعة" جهة الشمال تحت الزر
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 150,
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    decoration: InputDecoration(
                      labelText: 'اسم المجموعة',
                      border: OutlineInputBorder(),
                      isDense: true,
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    ),
                    value: selectedGroup,
                    items: groupNames.map((name) {
                      return DropdownMenuItem(
                        value: name,
                        child: Text(name),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() => selectedGroup = val);
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              // حقل "نوع" جهة الشمال تحت "اسم المجموعة"
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 150,
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    decoration: InputDecoration(
                      labelText: 'نوع',
                      border: OutlineInputBorder(),
                      isDense: true,
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    ),
                    value: selectedType,
                    items: types.map((type) {
                      return DropdownMenuItem(
                        value: type,
                        child: Text(type),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() => selectedType = val);
                    },
                  ),
                ),
              ),
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
             int _currentIndex = 0;
            });
          },
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
