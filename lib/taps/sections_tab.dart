import 'package:fci_app/main_card.dart';
import 'package:fci_app/taps/tabs_design.dart';
import 'package:flutter/material.dart';
import '../app_bar.dart';
import '../design.dart';

class SectionsTab extends StatefulWidget {
  @override
  _SectionsTabState createState() => _SectionsTabState();
}

class _SectionsTabState extends State<SectionsTab>
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

  String dropdownValue = 'الأقسام';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        hint: TabDesign(dropdownValue, Colors.grey.shade200),
        elevation: 1,
        iconSize: 0,
        style: TextStyle(color: Color.fromRGBO(162, 162, 162, 1)),
        onChanged: (String newValue) {
          setState(() {
            if (newValue == 'علوم الحاسب') {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MainAppBar(
                        _tabController,
                        silverList(
                          "قسم علوم الحاسب",
                          Container(
                            color: Color.fromRGBO(227, 225, 225, 1),
                            child: Column(
                              children: [
                                SizedBox(height: 12),
                                MainCard(
                                  "نبذة عن القسم",
                                  row('ينصب الاهتمام الرئيسى لقسم علوم الحاسب على متابعة واستيعاب وتطوير المفاهيم العلمية وراء ما تنجزه الحاسبات وكيف تنجزه مع معرفة بناء الحاسبات وكيف تعمل،فيهتم القسم بتحليل وتصميم وقياس درجة تعقيد الخوارزميات المستخدمة فى حل المشكلات الحقيقة، ويركز القسم على تطبيقات الذكاء الاصطناعى التى تحاكى فيها الحاسبات السلوك الذكى للإنسان فى معالجة للمعلومات،ويدخل فى إطار اهتمام قسم علوم الحاسب تدريس وإجراء البحوث المتعلقة بمقرارات مثل: تحليل وتصميم الخوارزميات، اللغات الصورية ونظرية الاليات، تقييم أداء النظم، تعريب الحاسب، الذكاء الاصطناعى، النظم الخبيرة، الشبكات العصبية، الحسابات الموزعة، أساسيات البرمجة، البرمجة الهيكلية، البرمجة الشيئية، نظم التشغيل، نظرية مترجمات البرامج، معالجة الصور، البرمجة المنطقية معالجة الكلام، الرؤية بالحاسب، علوم الإدراك.'),
                                ),
                                SizedBox(height: 12),
                                MainCard(
                                  "أعضاء هيئة التدريس",
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      children: [
                                        row('أستاذ مساعد'),
                                        Table(
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              width: 2, color: Colors.white),
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'د. محمد حلمى عبد العزيز خفاجي'),
                                                  column(
                                                      'د. شيرين علي محمد طايع'),
                                                ])
                                          ],
                                        ),
                                        row('مدرس'),
                                        Table(
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              width: 2, color: Colors.white),
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'د. عبد الله محمود شعيب ( إعارة )'),
                                                  column('د. حسين عكاشه محمد'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'د. مسعود إسماعيل مسعود'),
                                                  column(
                                                      'د. هشام عبد العظيم اسماعيل محمد خليدى'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'د. أيمن عنتر عبدالمهيمن الهلباوى( أجازة )'),
                                                  column(
                                                      'د . أحمد محمد صادق صالح'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'د. هويدا يسري عبدالنبي سيد'),
                                                  column(
                                                      'د. شيرين أحمد محمد حسين'),
                                                ]),
                                          ],
                                        ),
                                        row('مدرس مساعد'),
                                        Table(
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              width: 2, color: Colors.white),
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'م . كريم عز الدين ربيع( أجازة )'),
                                                  column(
                                                      'أ. عبد الرحمن أحمد السيد الشافعي'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. بسمة حسن كمال حسين'),
                                                  column(
                                                      'م. محمد فوزي فهمي حسانين (بعثة دراسية)'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. إسراء محمد هاشم أحمد'),
                                                  column(
                                                      'أ. فوزية رمضان سيد حسان'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. حسين شحاته عبد العزيز عبد الله'),
                                                  column(
                                                      'أ.أسماء رضا محمد محمد'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. هدير مصطفى سيد طلبة'),
                                                  column(
                                                      'أ. جهاد حسن عباس سالم'),
                                                ]),
                                          ],
                                        ),
                                        row('معيد'),
                                        Table(
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              width: 2, color: Colors.white),
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. محمود محمد أحمد بدرى'),
                                                  column(
                                                      'أ. مصطفى عبدالغفار ذكى'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. سمر شعبان عبد الفتاح'),
                                                  column(
                                                      'أ. معتز أحمد أحمد السيد'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column('أ. مي عمر أحمد الدش'),
                                                  column('أ. أحمد رمضان يوسف'),
                                                ]),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        context)),
              );
            }
            /*       ************************************************************************************************************ */
            else if (newValue == 'نظم المعلومات') {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MainAppBar(
                        _tabController,
                        silverList(
                          "قسم نظم المعلومات",
                          Container(
                            color: Color.fromRGBO(227, 225, 225, 1),
                            child: Column(
                              children: [
                                SizedBox(height: 12),
                                MainCard(
                                  "نبذة عن القسم",
                                  Column(
                                    children: [
                                      title2('يتضمن المجالات العلمية التالية',
                                          Colors.red.shade900),
                                      Description(
                                          'هياكل البيانات – تنظيم الملفات – أساليب الحسابات العددية – تحليل وتصميم النظم – نظم إدارة قواعد البيانات – إقتصاديات – تطوير البرامج – نظم المعلومات الإدارية – هندسة المعلومات – التجارة الإلكترونية – إدارة الأزمات والكوارث – نظم المعلومات الجغرافية – نظم ميكنة العمل المكتبي – نظم دعم إتخاذ القرار.'),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12),
                                MainCard(
                                  "أعضاء هيئة التدريس",
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      children: [
                                        row('أستاذ مساعد'),
                                        Table(
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              width: 2, color: Colors.white),
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'د . هيثم توفيق على الفيل ( اعارة خارجية )'),
                                                  column(
                                                      'د. أميرة محمد إبراهيم إدريس'),
                                                ])
                                          ],
                                        ),
                                        row('مدرس'),
                                        Table(
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              width: 2, color: Colors.white),
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'د . هالة عبد الحميد مصطفى ( اعارة خارجية )'),
                                                  column(
                                                      'د . محمد حسن إبراهيم'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'د. هبة الله محمد نبيل ( أجازة )'),
                                                  column(
                                                      'د. رشا محمد بدرى سيد'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'د . مصطفي ثابت محمد مبروك'),
                                                  column(
                                                      'د. مصطفي ربيع محمد كاسب'),
                                                ]),
                                          ],
                                        ),
                                        row('مدرس مساعد'),
                                        Table(
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              width: 2, color: Colors.white),
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'م. مصطفى علي محمود محمد ( أجازة )'),
                                                  column(
                                                      'م . ماري منير سعيد حنس ( أجازة )'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. أسماء هاشم عبد التواب إبراهيم'),
                                                  column(
                                                      'م. إسلام عيد علي محمد المغربي'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. رحاب محمود عبد الرحيم'),
                                                  column(
                                                      'أ. آية محمد كمال أحمد'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. حسين شحاته عبد العزيز عبد الله'),
                                                  column(
                                                      'أ.أسماء رضا محمد محمد'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. إسراء أحمد عبد الوهاب'),
                                                  column(
                                                      'أ. أحمد سلامة إسماعيل'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. هناء غريب محمد هندى'),
                                                  column(
                                                      'أ. عزة أحمد محمد أحمد'),
                                                ]),
                                          ],
                                        ),
                                        row('معيد'),
                                        Table(
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              width: 2, color: Colors.white),
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column('أ. نشوي نبيل عويس'),
                                                  column(
                                                      'أ. امانى ربيع عبد الموجود محمود'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. عبد الله محمود محمد عبد الحميد'),
                                                  column(
                                                      'أ. نداء حسين أحمد حسين'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. رحاب أحمد محمد فاروق'),
                                                  column(''),
                                                ]),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        context)),
              );
            }
            /*         ********************************************************************************* */
            else if (newValue == 'العلوم الأساسية') {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MainAppBar(
                        _tabController,
                        silverList(
                          "العلوم الأساسية",
                          Container(
                            color: Color.fromRGBO(227, 225, 225, 1),
                            child: Column(
                              children: [
                                SizedBox(height: 12),
                                MainCard(
                                  "نبذة عن القسم",
                                  Column(
                                    children: [
                                      title2('يتضمن المجالات العلمية التالية',
                                          Colors.red.shade900),
                                      Description(
                                          'رياضيات – فيزياء – إلكترونيات – لغة إنجليزية – لغويات حسابية – إنسانيات – إدارة أعمال – كتابة التقارير – أصول المهنة وشرعيتها – الاحتمالات والإحصاء – تحليل إحصائي وتطبيقي – بحوث العمليات – اقتصاديات تطوير البرامج.'),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12),
                                MainCard(
                                  "أعضاء هيئة التدريس",
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      children: [
                                        row('أستاذ مساعد'),
                                        Table(
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              width: 2, color: Colors.white),
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. د. نبيلة محمد حسن'),
                                                  column(''),
                                                ])
                                          ],
                                        ),
                                        row('مدرس مساعد'),
                                        Table(
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              width: 2, color: Colors.white),
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. انجي رجائى راضى عبد المقصود'),
                                                  column('أ. هبه نجاتى محمد'),
                                                ]),
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. محمد رمضان سعدى عبد التواب'),
                                                  column(
                                                      'أ . وليد شعبان محمد يمانى'),
                                                ]),
                                          ],
                                        ),
                                        row('معيد'),
                                        Table(
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              width: 2, color: Colors.white),
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                ),
                                                children: [
                                                  column(
                                                      'أ. حمدي محمد حافظ عبد العزيز'),
                                                  column(''),
                                                ]),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
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
        items: <String>['علوم الحاسب', 'نظم المعلومات', 'العلوم الأساسية']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: TabDesign(value, Colors.grey.shade300),
          );
        }).toList(),
      ),
    );
  }
}
