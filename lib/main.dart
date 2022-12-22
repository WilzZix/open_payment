import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_pay/components/header_widget.dart';
import 'package:open_pay/components/title_widget.dart';
import 'package:open_pay/components/transport_card.dart';

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
                body: CustomScrollView(
                  slivers: [
                    const HeaderWidget(),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 30),
                    ),
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(left: 24),
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
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
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
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 16),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        height: 500,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 26,
                                      width: 109,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF42C999),
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Мои продукты',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      height: 26,
                                      width: 84,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF42C999),
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Операции',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                const TitleWidget(
                                  title: 'Транспорт',
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                SizedBox(
                                  height: 120,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: const [
                                      TransportCard(
                                          summ: '4,500.00 млн.сум',
                                          title: 'Доходы',
                                          period: 'за май'),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      TransportCard(
                                        period: 'за май',
                                        summ: '4,500.00 млн.сум',
                                        title: 'Расходы',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const TitleWidget(
                                  title: 'Счета',
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const BankCards(),
                                const SizedBox(
                                  height: 8,
                                ),
                                const BankCards(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class BankCards extends StatelessWidget {
  const BankCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        border: Border.all(
          color: const Color(
            0xFFEAF9F4,
          ),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFEAF9F4),
            blurRadius: 4,
            offset: Offset(4, 8), // Shadow position
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Расчетный',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA2A0A8)),
                ),
                Text(
                  '••7852',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA2A0A8),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              '4,500.00 млн.сум',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
