import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../app_bar.dart';
import '../design.dart';
import '../main_card.dart';
class GraduateFollowUpUnit extends StatelessWidget {
  final TabController tabController;

  const GraduateFollowUpUnit({Key key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MainAppBar(
        tabController,
        silverList(
          'وحدة متابعة الخريجين',
          Container(
            color: Color.fromRGBO(227, 225, 225, 1),
            child: Column(
              children: [
                //centerTitle(''),
                MainCard(
                    'أهداف الوحدة',
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          row2('الهدف الاستراتيجى للوحدة :',
                              'تهدف وحدة متابعة الخريجين الى التواصل المستمر والفعال مع خريجى الكلية ، لتلبية احتياحجات الخريجين خلال حياتهم المهنية ، وتطويرها بما يتناسب مع احتياج سوق العمل وخدمة المجتمع المحيط وبما يحقق مع رسالة الكلية واهدافها .'),
                          row2('الاهداف الاجرائية:',
                              'تهدف وحدة متابعة الخريجين الى مساعدة الخريج على ان : يتواصل مع الكلية ومع جميع الزملاء السابقين والاحقين والشعوربالانتماء .\nيساعد زملائة على ايجاد فرص العمل المناسبة لهم .\nيزود الكلية بخبراتة العملية بما يضمن تواصل الكلية مع سوق العمل والمجتمع الخارجى .\nيحصل على التدريبات التخصصية ويشارك فى الندوات التى تعقدها الكلية الخريجين يتعرف على اخبار الكلية واخر المستجدات التى تحدث بها'),
                          row_pdf(
                              'دليل متابعة الخريجين',
                              'GraduateStudiesGuide',
                              context),
                        ],
                      ),
                    )),
                // centerTitle('خطة الوحدة'),
                MainCard(
                    'خطة الوحدة',
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          row2('المرحلة الاولى : الاعداد :',
                              '• تشكيل فريق العمل\n• تحديد اهداف الوحدة (الرؤية – الرسالة)\n• وضع الخطة السنوية والبرنامج الزمنى لها\n• تصميم قاعدة البيانات الخاصة بالخريجين\n• تصميم منتدى خاص بوحدة متابعة الخريجين\n• تصميم استمارة خاصة بطلبة البكالوريوس لتحديث البيانات ، حيث يقوم الطالب بملئ الاستمارة الخاصة بة والتى تحتوى على :\nالاسم الرباعى كما هو مدون بشهادة الميلاد – تاريخ الميلاد- الرقم القومى –رقم التليفون – المحمول – البريد الالكترونى الخاص به – العنوان ..........'),
                          row2(
                              ' المرحلة الثانية : التواصل مع الخريج :',
                              '• المراسلة عن طريق البريد الاليكترونى (وجود ميل خاص بالوحدة وتخصيص موظف للرد على التساؤلات )\n• التواصل الدائم من خلال المنتدى وتنظيم لقاءات دورية\n• دعوة الخريجين مرة كل عام فى حفل سنوى للاحتفال بالخريجين الجدد ويمكن تكريم بعض المتميزين من خريجى الكلية .\n• توفير فرص عمل مناسبة لهم ان امكن (عن طريق عقد ملتقى الخريجين لتوظيف ودعوة رجال الاعمال دليل للخريجين سنويا ونشرات دورية للمتميزين منهم'),
                          row2(
                              'المرحلة الثالثة : تقويم الاداء الذاتى',
                              'تقوم وحدة متابعة الخريجين بعمل تقويم ذاتى مستمر ويتم من خلال هذا التقويم :\n1- تحديد نقاط القوة والضعف فى الاداء خلال السنة الحالية وتعظيم نقاط القوة وتحسين نقاط لوضع خطة مستقبلية للتطوير وتحسين الاداء.\n2- رفع تقرير نهائى للاستاذ وكيل الكلية لشئون خدمة المجتمع .\n3- تصميم استمارت استبيان للمستفيدين ( الطلاب – الخريجين – اعضاء هيئة التدريس – اولياء الامور – رجال الاعمال ) بهدف قياس مدى الرضا عن مستوى المعارف الاكاديمية والمهارات العلمية المكتسبة التى يمتلكها الخريج مقارنة مع متطلبات الوظيفة.'),
                        ],
                      ),
                    )),
                // centerTitle('الهيكل التنظيمى'),
                MainCard(
                  'الهيكل التنظيمى',
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Table(
                      defaultVerticalAlignment:
                      TableCellVerticalAlignment.middle,
                      columnWidths: {
                        0: FractionColumnWidth(.45),
                        1: FractionColumnWidth(.40),
                        2: FractionColumnWidth(0.15)
                      },
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
                                  'أ.د.رانيا أحمد عبد العظيم أبو السعود'),
                              column('عميد الكلية'),
                              column('رئيسا'),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                            ),
                            children: [
                              column(
                                  ' أ.م.د/ طروب عبد النبى'),
                              column(
                                  ' وكيل الكلية لشئون خدمة المجتمع وتنمية البيئة'),
                              column('نائب للرئيس'),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                            ),
                            children: [
                              column(' د/ مصطفى ثابت'),
                              column(
                                  'مدرس بقسم نظم المعلومات'),
                              column('مدير الوحدة'),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                            ),
                            children: [
                              column(' د/ شرين احمد'),
                              column('مدرس بقسم علوم الحاسب'),
                              column('نائب المدير'),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                            ),
                            children: [
                              column('  م/ اسراء محمد هاشم'),
                              column('مدرس بقسم علوم الحاسب'),
                              column('عضوا'),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                            ),
                            children: [
                              column('  هدير مصطفى سيد'),
                              column('مدرس بقسم علوم الحاسب'),
                              column('عضوا'),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                            ),
                            children: [
                              column(
                                  '  السيدة / الشيماء عبد العاطى'),
                              column(
                                  'مدير ادارة شئون الخريجين'),
                              column('عضوا'),
                            ]),
                      ],
                    ),
                  ),
                ),

                //centerTitle('الرؤية'),
                MainCard(
                  'الرؤية',
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Description(
                        '• اتساع نطاق مفهوم متابعة الخريجين لتشمل جميع خريجى الجامعة ونشر ثقافة اهمية وجود وحدة لمتابعة الخرييجن بالكليات .\n• تفعيل دور جمعية خريجى كلية الحاسبات والمعلومات ، والتى مقرها الكلية.\n• ضمان تحقيق جودة التعليم بالكلية وتحقيق ركن هام من مشاريع الجودة تبادل الخبرات والتواصل بين الاجيال .\n• نشر ثقافة التعلم طوال الحياة بين الخريجين .\n• تشكيل فريق عمل على مستوى واسع لمحو الامية الكمبيوترية ( ليكون شعارالفيوم تتغير تشمل محو امية 100 الف مواطن قى الكمبيوتر ) ويكون هذا الفريق من طلبة وخريجى الكلية .\n• اتاحة الفرصة لتعلم الخريجين عن بعد عن طريق تكنولوجيا الاتصالات\n• تحقيق المعادلة الصعبة فى كيفية التوافق بين الدراسة النظرية بالكلية ومتطلبات سوق العمل وذلك من خلال جسور التواصل مع الخريجين والتعرف على الصعوبات التى تواجههم ومحاولة ايجاد حلول عملية.\n• التوسع فى فكرة استخدام الجامعة وكلياتها كمراكز خدمات فنية واستشارية وانتاجية تقدم خدماتها للمجتمع والبيئة المحيطة بها تحقيقا للجودة الشاملة.\n• يتم وضع التوجهات والتطلعات المستقبلية للوحدة طبقا لطبيعة احتياجات كل كلية وبما يتوافق مع استراتيجية قطاع خدمة المجتمع وتنمية البيئة.'),
                  ),
                ),
                //centerTitle(''),

                MainCard(
                    'الأنشطة',
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          row('للدخول إلى رابطة خريجي حاسبات الفيوم :'),
                          FlatButton(
                            child: SizedBox(
                              child: Image(
                                image: ExactAssetImage(
                                    'assets/images/Activities.jpg'),
                                fit: BoxFit.cover,
                              ),
                              width: double.infinity,
                              height: 200,
                            ),
                            onPressed: () {
                              launch(
                                  'https://www.facebook.com/groups/107133943130370/?ref=br_rs');
                            },
                          ),
                          SizedBox(
                            height: 8,
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
        context);
  }
}
