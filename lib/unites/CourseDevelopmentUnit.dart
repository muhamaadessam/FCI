import 'package:flutter/material.dart';
import '../app_bar.dart';
import '../design.dart';
import '../main_card.dart';
class CourseDevelopmentUnit extends StatelessWidget {
  final TabController tabController;

  const CourseDevelopmentUnit({Key key, this.tabController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainAppBar(
        tabController,
        silverList(
          'وحدة تطوير المقررات',
          Container(
            color: Color.fromRGBO(227, 225, 225, 1),
            child: Column(
              children: [
                MainCard(
                  'عن المشروع',
                  Column(
                    children: [
                      row('يعتبر مشروع تطوير تدريس مقررات برنامج علوم الحاسب الكترونيا احد المشاريع التنافسية لتطوير نظم تكنولوجيا المعلومات ICTP لرفع كفاءة استخدام تكنولوجيا المعلومات والاتصالات فى التعليم.'),
                      row('تم التقدم بالمشروع فى ديسمبر 2009 الى وحدة ادارة المشروعات بالمجلس الاعلى للجامعات وفوز الكلية به ضمن 6 كليات اخرى على مستوى الجامعات المصرية. تم عمل عروض حية امام لجنة تحكيم فى مارس 2010 وتصفية المشاريع الى ثلاثة.'),
                      row(' ويعتبر مشروع"تطوير تدريس مقررات برنامج علوم الحاسب الكترونيا ضمن ثلاث مشاريع على مستوى الجامعات المصرية وهو الوحيد على مستوى كليات الحاسبات.'),
                      centerTitle('أهمية المشروع'),
                      Description(
                          ' 1- صياغة معايير للتقويم (القبلى والمستمر والبعدى) ووضع آليات وأنشطة لضمان تحقيقها من خلال ادارة التعليم الالكترونى للمووديل MOODLE.\n2- إنشاء وحدة لادارة المقررات الالكترونية تتبع وحدة الجودة بالكلية وتكون تحت اشراف وكيل الكلية لشئون التعليم والطلاب.\n3- استحداث انماط جديدة للتعليم والتعلم الذاتى للطلاب اتباع أساليب التحسين والتطوير المستمر بما يضمن الدقة والشفافية ( مثل الاستعانة ببعض المواقع للتجارب الافتراضية فى الفيزياء او التصميم المنطقى...).\n4- تكامل بين مشروع المقررات الالكترونية ومشروع تطوير نظم تقويم الطلاب بالكلية من خلال بنوك الاسئلة للمقررات ومشروع الجودة بالكلية من خلال التقيمات الطلابية واخذ التغذية الراجعة وتحديد نقاط الضعف للتحسين والتطوير.\n5-دورات تدريبية لاعضاء هيئة التدريس بالكلية عن كيفية ادارة المقررات الالكترونية .\n6- تدريب طلاب الجامعة وتشجيعهم على استخدام المقررات الالكترونية .\n7- تدريب الكوادر الفنية لنشر الخبرة في مجالات إعداد وتصميم المقررات الالكترونية .\n8- وضع خطة للاستمرارية وضمان جودة المنتج لتعظيم الاستفادة من تكنولوجيا المعلومات والاتصالات لانتاج مزيد من المقررات.'),
                      centerTitle('أهداف المشروع'),
                      Description(
                          '• نشر الوعي بثقافة التعليم الالكتروني .\n• تطبيق مبدأ التعلم الذاتي والاستفادة من التعليم الالكتروني.\n• انشاء معمل لادارة التعليم الالكترونى يتبع وحدة الجودة بالكلية.\n• تحويل نسبة من مقررات برنامج علوم الحاسب الى الصورة الالكترونية.\n• تدريب اعضاء هيئة التدريس على التفاعل مع البيئة الالكترونية وتاهيل الطلاب للاستخدام والاستفادة من المقررات المنتجة .'),
                    ],
                  ),
                ),
                MainCard(
                  'إدارة المشروع',
                  Column(
                    children: [
                      centerTitle('فريق الإدارة'),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 32, left: 32, bottom: 16),
                        child: Card(
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 40, left: 40),
                            child: Column(
                              children: [
                                image(
                                    'assets/images/DrRanyaA.jpg',
                                    context),
                                Description(
                                    "أ.د. رانيا أحمد عبد العظيم أبو السعود"),
                                Description('عميد الكلية'),
                                Description(
                                    ' المشرف على المشروع'),
                                Description(
                                    'البريد الإلكتروني'),
                                Description(
                                    'raa00@fayoum.edu.eg'),
                                SizedBox(
                                  height: 8,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      centerTitle('فريق العمل'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Table(
                          defaultVerticalAlignment:
                          TableCellVerticalAlignment
                              .middle,
                          border: TableBorder.all(
                              width: 1, color: Colors.white),
                          textDirection: TextDirection.rtl,
                          children: [
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column('محمد مصطفي فهمي'),
                                column('مصمم تعليمي'),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column('جيلان ميزار جبالي'),
                                column('مصمم تعليمي'),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column('أحمد فتحي محمود'),
                                column('مصمم جرافيك'),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column('أحمد صلاح أحمد'),
                                column('مصمم جرافيك'),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column(
                                    'أنجي محمد عبد الجواد'),
                                column('مصمم جرافيك'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                MainCard(
                  'المقررات الإلكترونية',
                  Column(
                    children: [
                      title2(
                          '- المقررات التى تم تحويلها الى الصورة الالكترونية',
                          Colors.blue.shade700),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Table(
                          defaultVerticalAlignment:
                          TableCellVerticalAlignment
                              .middle,
                          columnWidths: {
                            0: FractionColumnWidth(.05),
                            1: FractionColumnWidth(.35),
                            2: FractionColumnWidth(0.15),
                            3: FractionColumnWidth(0.45),
                          },
                          border: TableBorder.all(
                              width: 1, color: Colors.white),
                          textDirection: TextDirection.rtl,
                          children: [
                            TableRow(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(
                                    0, 128, 102, 1),
                              ),
                              children: [
                                column_color('م'),
                                column_color('المادة'),
                                column_color('الفرقة'),
                                column_color('أستاذ المقرر'),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column('1'),
                                column('الرياضيات(1)'),
                                column('الاولى'),
                                column(
                                    'د. عائشة عيسوى – د. جمال عبد الحليم'),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column('2'),
                                column('الفيزياء(2)'),
                                column('الاولى'),
                                column(
                                    'ا.د. نبيلة حسن – ا.د. عفاف حسين'),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column('3'),
                                column('مقدمة نظم المعلومات'),
                                column('الثانية'),
                                column('د هيثم الفيل'),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column('4'),
                                column('تحليل وتصميم النظم'),
                                column('الثالثة'),
                                column('د. احمد عمران'),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column('5'),
                                column('قواعد البيانات'),
                                column('الثالثة'),
                                column(
                                    'د. هيثم الفيل – د. محمد خفاجى'),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column('6'),
                                column('أنظمة امان الحاسب'),
                                column('الثالثة'),
                                column('د. عد الله شعيب'),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column('7'),
                                column('معالجة الصور'),
                                column('الرابعة'),
                                column('د. مصطفى رضا'),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              children: [
                                column('8'),
                                column('اللغات الصورية'),
                                column('الرابعة'),
                                column('د. عد الله شعيب'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      row_pdf(
                          'دلیل الطالب في نظام إدارة التعلم Moodle',
                          'StudentGuide',
                          context)
                    ],
                  ),
                ),
                MainCard(
                    'مخرجات المشروع',
                    Description(
                        '1. مقررات الالكترونية لتطوير تدريس برنامج علوم الحاسب بالكلية.\n2. وحدة لادارة المقررات الكترونية بالكلية تتبع وحدة الجودة وتحت اشراف مركز الجامعة.\n3. تكامل بين مشاريع الكلية لتطوير العملية التعليمية واستحداث طرق لتقويم الطلاب بناء على معايير الجودة.\n4. خطة للاستمرارية من خلال تحديد نقاط القوة والضعف للتطوير والتحسين .')),
              ],
            ),
          ),
        ),
        context);
  }
}
