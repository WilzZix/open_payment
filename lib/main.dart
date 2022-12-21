import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/payment_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF42C999)),
            home: SafeArea(
              child: Scaffold(
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 30),
                      ),
                      const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'ООО “ОРГАНИЗАЦИЯ”',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 16),
                      ),
                      SliverToBoxAdapter(
                        child: Row(
                          children: const [
                            PaymentCard(
                              svgPath: 'assets/icons/salary_project.svg',
                              title: 'Зарплатный \nпроект',
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            PaymentCard(
                              svgPath: 'assets/icons/deposit_nso.svg',
                              title: 'Депозиты и \nНСО',
                            )
                          ],
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 16),
                      ),
                      SliverToBoxAdapter(
                        child: Container(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
