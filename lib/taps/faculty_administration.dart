import 'package:fci_app/taps/tabs_design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

import '../app_bar.dart';
import '../design.dart';
import '../main_card.dart';

class FacultyAdministrationTab extends StatefulWidget {
  @override
  _FacultyAdministrationTabState createState() =>
      _FacultyAdministrationTabState();
}

class _FacultyAdministrationTabState extends State<FacultyAdministrationTab>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 5, length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  String dropdownValue = 'إدارة الكلية';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Center(
        child: DropdownButton<String>(
          hint: TabDesign(dropdownValue, Colors.grey.shade200),
          elevation: 1,
          iconSize: 0,
          style: TextStyle(color: Color.fromRGBO(162, 162, 162, 1)),
          onChanged: (String newValue) {
            setState(() {
              if (newValue == 'عميد الكلية') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainAppBar(
                          _tabController,
                          silverList(
                            'قائم بأعمال عميد الكلية',
                            Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      image('assets/images/DrRanyaA.jpg', context),
                                      row("   أ.د. رانيا أحمد عبد العظيم أبو السعود"),
                                      row('  تاريخ التعببن: 16/9/2020 م'),
                                      row('  التخصص: هندسة الاتصالات'),
                                      Description('raa00@fayoum.edu.eg'),
                                      _row_link('السيرة الذاتية', Column()),
                                      _row_link('كلمة عميد الكلية', Column()),
                                      _row_link('مكتب عميد الكلية', Column()),
                                      SizedBox(
                                        height: 8,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          context)),
                );
              } else if (newValue == 'وكلاء الكلية') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainAppBar(
                          _tabController,
                          silverList(
                            'وكلاء الكلية',
                            Container(
                              color: Color.fromRGBO(227, 225, 225, 1),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 16,
                                  ),
                                  MainCard(
                                    'قائم باأعمال وكيل الكلية لشئون التعليم و الطلاب',
                                    Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: Card(
                                        elevation: 10,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              image('assets/images/DrShereen.jpg', context),
                                              row("د . شيرين علي محمد طايع"),
                                              row('  تاريخ التعببن: 10/8/2016 م'),
                                              row('  التخصص: علوم الحاسب'),
                                              Description(
                                                  'sat00@fayoum.edu.eg'),
                                              _row_link(
                                                  'السيرة الذاتية', Column()),
                                              _row_link(
                                                  'مكتب الوكيل', Column()),
                                              _row_link(
                                                  'الهيكل التنظيمي', Column()),
                                              SizedBox(
                                                height: 8,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  MainCard(
                                    'قائم باأعمال وكيل الكلية لالدراسات العليا و البحوث ',
                                    Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: Card(
                                        elevation: 10,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              image('assets/images/DrMohamedH.jpg', context),
                                              row("د. محمد حسن إبراهيم محمد"),
                                              row('  تاريخ التعببن: 02/09/2020 م'),
                                              row('  التخصص: نظم المعلومات'),
                                              Description(
                                                  'mhi11@fayoum.edu.eg'),
                                              _row_link(
                                                  'السيرة الذاتية', Column()),
                                              _row_link(
                                                  'مكتب الوكيل', Column()),
                                              _row_link(
                                                  'الهيكل التنظيمي', Column()),
                                              SizedBox(
                                                height: 8,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  MainCard(
                                    'قائم باأعمال وكيل الكلية لخدمة المجتمع وتنمية البيئة',
                                    Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: Card(
                                        elevation: 10,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              image('assets/images/DrSomyia.jpg', context),
                                              row("د. سمية السيد جودة على"),
                                              row('  تاريخ التعببن: 26/5/2019 م'),
                                              row('  التخصص: الفيزياء'),
                                              Description(
                                                  'ssa06@fayoum.edu.eg'),
                                              _row_link(
                                                  'السيرة الذاتية', Column()),
                                              _row_link(
                                                  'مكتب الوكيل', Column()),
                                              _row_link(
                                                  'الهيكل التنظيمي', Column()),
                                              SizedBox(
                                                height: 8,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          context)),
                );
              } else if (newValue == 'مجلس الكلية') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainAppBar(
                          _tabController,
                          silverList(
                            'قائم بأعمال عميد الكلية',
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Table(
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    border: TableBorder.all(
                                        width: 1, color: Colors.white),
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column(
                                                'أ.د. رانيا أحمد عبد العظيم أبو السعود'),
                                            column('قائم بأعمال عميد الكلية'),
                                          ]),
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column('أ.م.د/ شرين على طايع'),
                                            column(
                                                'قائم بأعمال وكيل الكلية لشئون التعليم والطلاب'),
                                          ]),
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column(' أ.م.د/ محمد حلمى خفاجى'),
                                            column(
                                                'قائم بعمل وكيل الكلية لشئون الدراسات العليا والبحوث'),
                                          ]),
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column('د/ سمية السيد جودة على'),
                                            column(
                                                'قائم بعمل وكيل الكلية لشئون خـدمة المجتمع وتنمية البيئة	'),
                                          ]),
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column('د/ مسعود إسماعيل مسعود'),
                                            column(
                                                'مدرس بقسم علوم الحاسب (ممثل عن المدرسين)'),
                                          ]),
                                    ],
                                  ),
                                  column('أعضاء من الخارج'),
                                  Table(
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    border: TableBorder.all(
                                        width: 1, color: Colors.white),
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column(
                                                'أ.د/ فاطمة عبد الستار عمارة'),
                                            column(
                                                'أستاذ بقسم علوم الحاسب - كلية الحاسبات والمعلومات - جامعة القاهرة	'),
                                          ]),
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column('أ.د / محمد محمد الربيعي'),
                                            column(
                                                'الأستاذ المتفرغ بقسم الكيمياء - كلية العلوم - جامعة الفيوم	'),
                                          ]),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('المهندس / أحمد محمد السبكي'),
                                          column(
                                              'نائب رئيس هيئة تنمية صناعة تكنولوجيا المعلومات ( Etida )	'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          context)),
                );
              } else if (newValue == 'مدير عام الكلية') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainAppBar(
                          _tabController,
                          silverList(
                            'مدير عام الكلية',
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  image('assets/images/MrIbrahim.jpg', context),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'أ / ابراهيم على معوض\n   مدير ادارة الكلية',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: ArabicFonts.El_Messiri,
                                          package: 'google_fonts_arabic',
                                          fontWeight: FontWeight.w300),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 1, left: 1, right: 1),
                                    child: Container(
                                      width: double.infinity,
                                      color: Color.fromRGBO(0, 128, 102, 1),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "الأقسام الإدارية",
                                          style: TextStyle(color: Colors.white),
                                          textDirection: TextDirection.rtl,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Table(
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    border: TableBorder.all(
                                        width: 1, color: Colors.white),
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column('الكادر العام'),
                                            column('أ. محمد عبد العظيم'),
                                          ]),
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column(
                                                'الكادر الخاص والعلاقات الثقافية'),
                                            column('أ. سمية يحيى يس'),
                                          ]),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('شئون الطلاب'),
                                          column('أ. سالمة عبد التواب سعيد'),
                                        ],
                                      ),
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column('شئون الخريجين'),
                                            column('أ. سهام احمد حسن'),
                                          ]),
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column('قسم الاستحقاقات'),
                                            column('أ. ميرفت عبد الله'),
                                          ]),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('رعاية الشباب'),
                                          column('أ. هالة سيد حافظ	'),
                                        ],
                                      ),
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column('الشئون المالية'),
                                            column('أ. إيمان يونس محمود'),
                                          ]),
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column('المشتريات'),
                                            column(
                                                'أ. بهاء الدين عبد الفتاح حسونة'),
                                          ]),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('المخازن'),
                                          column(
                                              'أ. عبد الهادي ذكي عبد الهادي'),
                                        ],
                                      ),
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column('المكتبة'),
                                            column(
                                                'أ / أمانى سعودى عبد القادر'),
                                          ]),
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                          ),
                                          children: [
                                            column('أمين الخزينة'),
                                            column('أ. محمد معوض'),
                                          ]),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('معامل الكلية'),
                                          column('أ. صلاح هاشم عبد الحميد'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('وحدة ضمان الجودة'),
                                          column('أ. تغريد السيد يوسف'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          context)),
                );
              } else if (newValue == 'الوحدات الخاصة') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainAppBar(
                            _tabController,
                            silverList(
                              'مركز خدمة المجتمع وتنمية البيئة',
                              Column(
                                children: [
                                  title2('تاريخ الإنشاء :- 30 – 5 – 2007',
                                      Colors.red.shade900),
                                  Description(
                                      'يهدف المركز إلى خدمة المجتمع والبيئة المحيطة عن طريق توظيف الإمكانيات المتاحة والتنوعة بالكلية ويتكون المركز من وحدتين :\n* وحدة الخدمات والاستشارات .\n * وحدة التدريب وتنمية المهارات.'),
                                  title2(
                                      'وتتكاتف الوحدات في مجمل أعمال المركز لتحقيق الأغراض الآتية:',
                                      Colors.red.shade900),
                                  Description(
                                      '• القيام بتقديم الاستشارات وعمل البحوث الميدانية التي لها عائد تطبيقي مثمر لخدمة المجتمع وتنمية البيئة وذلك في المجالات العلمية المختلفة.\n• تنمية المهرات والطاقات الإبداعية لصالح الكلية كل في مجاله من عقد ندوات علمية ومؤتمرات وورش عمل وكذلك دورات تدريبية. \n • تبادل الخبرات والمشورة مع الهيئات والجهات المعنية وكذلك تسويق الخبرات الجامعية والبرامج والدورات والمشروعات الإنتاجية. \n• تقديم الاستشارات والخدمات العلمية والبيئية.'),
                                  SizedBox(
                                    height: 8,
                                  ),
                                ],
                              ),
                            ),
                            context)));
              } else if (newValue == 'اللجان') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainAppBar(
                          _tabController,
                          silverList(
                            "اللجان",
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, bottom: 4),
                                    child: row('لجنة شئون التعليم والطلاب'),
                                  ),
                                  Table(
                                    columnWidths: {
                                      0: FractionColumnWidth(0.35),
                                      1: FractionColumnWidth(0.5),
                                      2: FractionColumnWidth(0.15)
                                    },
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    border: TableBorder.all(
                                        width: 1, color: Colors.white),
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('ا.م. د/ شرين على طايع'),
                                          column(
                                              'قائم بعمل وكيل الكلية لشئون التعليم والطلاب'),
                                          column('رئيســـاً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ حسين عكاشة محمد'),
                                          column('مدرس بقسم علوم الحــــاسب'),
                                          column('عضوا'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ محمد حسن ابراهيم'),
                                          column('مدرس بقسم نظم المــــعلومات'),
                                          column('عضوا'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د / هويدا يسرى عبد النبى'),
                                          column('مدرس بقسم علوم الحاسب'),
                                          column('عضوا'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ شرين احمد محمد'),
                                          column('مدرس بقسم نظم المعلومات'),
                                          column('عضوا'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('أ/ سالمة عبد التواب'),
                                          column('رئيس قســم شئون الطـــلاب'),
                                          column('عضوا'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, bottom: 4),
                                    child: row(' لجنة الدراسات العليا والبحوث'),
                                  ),
                                  Table(
                                    columnWidths: {
                                      0: FractionColumnWidth(0.35),
                                      1: FractionColumnWidth(0.5),
                                      2: FractionColumnWidth(0.15)
                                    },
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    border: TableBorder.all(
                                        width: 1, color: Colors.white),
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ محمد حلمي خفاجي'),
                                          column(
                                              'قائم بعمل وكيل الكلية لشئون الدراسات العليا والبحوث	'),
                                          column('رئيســـاً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('ا.د. نبيلة محمد حسن'),
                                          column('المشرف على الكلية'),
                                          column('عضواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('ا.م. د/ شرين على طايع'),
                                          column(
                                              'قائم بعمل وكيل الكلية لشئون التعليم والطلاب	'),
                                          column('عضواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column(
                                              'أ.م.د/ طروب عبدالنبى عبدالباسط'),
                                          column(
                                              'قائم بعمل وكيل الكلية لشئون خدمة المجتمع'),
                                          column('عضواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ مسعود اسماعيل مسعود'),
                                          column('مدرس بقسم علوم الحاسب	'),
                                          column('عضواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('ا/ سهام محمد حسن'),
                                          column(
                                              'مدير قسم الدراسات العليا والبحوث'),
                                          column('عضواً'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, bottom: 4),
                                    child: row(
                                        'لجنة شئون خدمة المجتمع وتنمية البيئة'),
                                  ),
                                  Table(
                                    columnWidths: {
                                      0: FractionColumnWidth(0.35),
                                      1: FractionColumnWidth(0.5),
                                      2: FractionColumnWidth(0.15)
                                    },
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    border: TableBorder.all(
                                        width: 1, color: Colors.white),
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column(
                                              'أ.م.د/ طروب عبدالنبى عبدالباسط'),
                                          column(
                                              'قائم بعمل وكيل الكلية لشئون خدمة المجـتمع'),
                                          column('رئيسـاً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ رشا محمد بدرى'),
                                          column('مدرس بقسم نظم المعلومات	'),
                                          column('عضـواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ احمد محمد صادق'),
                                          column('مدرس بقسم علوم الحاسب'),
                                          column('عضـواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ مصطفى ثابت'),
                                          column('مدرس بقسم نظم المعلومات	'),
                                          column('عضـواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('أ/ ابراهيم على معوض'),
                                          column(
                                              'مـــدير إدارة الكـــــــلية	'),
                                          column('عضـواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('السيدة / منال جابر'),
                                          column(
                                              'مكتب وكيل الكلية لشئون خدمة المجتمع	'),
                                          column('عضـواً'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, bottom: 4),
                                    child: row(
                                        ' لجنة العلاقات العلمية والثقافية الخارجية'),
                                  ),
                                  Table(
                                    columnWidths: {
                                      0: FractionColumnWidth(0.35),
                                      1: FractionColumnWidth(0.5),
                                      2: FractionColumnWidth(0.15)
                                    },
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    border: TableBorder.all(
                                        width: 1, color: Colors.white),
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('أ.د/ نبيلة محمد حسن'),
                                          column('المشرف على الكلــــية'),
                                          column('رئيســــاً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ محمد حلمى خفاجى'),
                                          column(
                                              'قائم بعملوكيل الكلية لشئون الدراسات العليا	'),
                                          column('عضــواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column(
                                              'أ.م.د/ طروب عبدالنبى عبدالباسط'),
                                          column(
                                              'قائم بعمل وكيل الكلية لشئون خدمة المجـتمع	'),
                                          column('عضــواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ هويدا يسرى عبد النبى'),
                                          column('مدرس بقسم علوم الحاسب	'),
                                          column('عضــواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ مصطفى ثابت'),
                                          column('مدرس بقسم نظم المعلومات'),
                                          column('عضــواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('أ/علياء عبدالمنعم'),
                                          column('مسئول العلاقات الثقافية'),
                                          column('عضــواً'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, bottom: 4),
                                    child:
                                        row('لجنة المختبرات والاجهزة العلمية'),
                                  ),
                                  Table(
                                    columnWidths: {
                                      0: FractionColumnWidth(0.35),
                                      1: FractionColumnWidth(0.5),
                                      2: FractionColumnWidth(0.15)
                                    },
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    border: TableBorder.all(
                                        width: 1, color: Colors.white),
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('أ.م .د / شرين على طايع'),
                                          column(
                                              'قائم بعمل وكيل الكلية لشئون التعليم والطلاب'),
                                          column('رئيســـاً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د / محمد حلمى خفاجى'),
                                          column(
                                              'قائم بعمل وكيل الكلية لشئون الدراسات العليا والبحوث	'),
                                          column('عضواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ حسين عكاشة'),
                                          column('مدرس بقسم علوم الحاسب	'),
                                          column('عضواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د / محمد حسن'),
                                          column('مدرس بقسم نظم المعلومات'),
                                          column('عضواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ أحمد محمد صادق'),
                                          column('مدرس بقسم علوم الحاسب'),
                                          column('عضواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('السيد / صلاح هاشم'),
                                          column('رئيس المــــــــعامل	'),
                                          column('عضواً'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, bottom: 4),
                                    child: row(' لجنة المكتبات'),
                                  ),
                                  Table(
                                    columnWidths: {
                                      0: FractionColumnWidth(0.35),
                                      1: FractionColumnWidth(0.5),
                                      2: FractionColumnWidth(0.15)
                                    },
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    border: TableBorder.all(
                                        width: 1, color: Colors.white),
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ محمد حلمي خفاجي'),
                                          column(
                                              'قائم بعمل وكيل الكلية لشئون الدراسات العليا'),
                                          column('رئيســـاً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('أ.م .د / شرين على طايع'),
                                          column(
                                              'قائم بعمل وكيل الكلية لشئون التعليم والطلاب	'),
                                          column('عضواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column(
                                              'أ.م.د/ طروب عبدالنبى عبدالباسط'),
                                          column(
                                              'قائم بعمل وكيل الكلية لشئون خدمة المجتمع'),
                                          column('عضواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ مسعود اسماعيل'),
                                          column('مدرس بقسم نظم المعلومات	'),
                                          column('عضواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('د/ رشا محمد بدرى'),
                                          column('مدرس بقسم علوم الحاسب'),
                                          column('عضواً'),
                                        ],
                                      ),
                                      TableRow(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                        ),
                                        children: [
                                          column('السيدة / امانى سعودي'),
                                          column(
                                              'قائم بأعمال مدير مكتبة الكلية'),
                                          column('عضواً'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  )
                                ],
                              ),
                            ),
                          ),
                          context)),
                );
              }
            });
          },
          dropdownColor: Color.fromRGBO(244, 244, 244, 1),
          items: <String>[
            'عميد الكلية',
            'وكلاء الكلية',
            'مجلس الكلية',
            'مدير عام الكلية',
            'الوحدات الخاصة',
            'اللجان',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: TabDesign(value, Colors.grey.shade300),
            );
          }).toList(),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _row_link(String text, Widget widget) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Icon(
              Icons.insert_link,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainAppBar(
                            _tabController,
                            silverList(
                                text,
                                Column(
                                  children: [
                                    widget,
                                    SizedBox(
                                      height: 8,
                                    ),
                                  ],
                                )),
                            context)),
                  );
                });
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: ArabicFonts.El_Messiri,
                      package: 'google_fonts_arabic'),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*Navigator.push(context,MaterialPageRoute(builder: (context) => MainAppBar(_tabController,silverList("",Column(),),context)),);*/
