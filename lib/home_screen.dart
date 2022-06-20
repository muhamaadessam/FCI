
import 'package:fci_app/main_card.dart';
import 'package:fci_app/unites/CourseDevelopmentUnit.dart';
import 'package:fci_app/unites/CrisisAndDisasterUnit.dart';
import 'package:fci_app/unites/GraduateFollow-upUnit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'app_bar.dart';
import 'design.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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

  @override
  Widget build(BuildContext context) {
    return MainAppBar(_tabController, _silverList(), context);
  }

  Widget _silverList() {
    return SliverList(
      // ignore: missing_return
      delegate: SliverChildBuilderDelegate((context, position) {
        if (position == 0) {
          return Column(
            children: [
              MainCard(
                "اخر الاخبار",
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Column(
                      children: [
                        /*FlatButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> DataLine()));
                        }, child: Text('data')),*/
                        SizedBox(
                          child: Image(
                            image: ExactAssetImage(
                                'assets/images/last_news_image.jpg'),
                            fit: BoxFit.cover,
                          ),
                          width: double.infinity,
                          height: 200,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        _row_link(
                            "حاسبات تعقد اجتماع مجلس الكلية بحضور ممثلين من الخارج.",
                            (context) => MainAppBar(
                                _tabController,
                                silverList(
                                  "حاسبات تعقد اجتماع مجلس الكلية بحضور ممثلين من الخارج.",
                                  Column(
                                    children: [
                                      image("assets/images/last_news_image.jpg",
                                          context),
                                      title2('10/11/2020', Colors.red.shade900),
                                      Description(
                                          "عقدت كلية الحاسبات والمعلومات اجتماعها الشهرى لمجلس الكلية لشهر نوفمبر من العام الجامعى 2020/2021.\n\nوبحضور السيد الاستاذ الدكتور / رانيا ابو السعود - عميد الكلية ، والاستاذ الدكتور/ محمد حسن ابراهيم - وكيل الكلية لشئون الدراسات العليا والبحوث ، والدكتور/ مسعود اسماعيل - مدير وحدة الجودة بالكلية ، والدكتور/ احمد محمد صادق - المدرس بقسم علوم الحاسب ، والدكتور/ مصطفى ربيع - المدرس بقسم نظم المعلومات.\n\nكما شرف المجلس بإستضافة اعضاء الخارج وعلى رأسهم السيد الاستاذ الدكتور/ نبيلة حسن - عميد الكلية السابق ، والاستاذ الدكتور/ محمد الربيعى - وكيل الكلية لشئون التعليم والطلاب الاسبق ، والمهندس / عمرو المصرى - مدير قطاع التعليم بشركة مايكروسوفت مصر.\n\nبدا المجلس بتكريم السيد الاستاذ الدكتور/ نبيلة حسن - عميد الكلية السابق على مجهوداتها خلال الفترة الماضيه وما بذلته من مجهود فى سبيل رفعة الكلية.\n\nثم بدأ المجلس مناقشة موضوعاته المختلفة التى من شأنها استقرار العملية التعليمية والادارية بالكلية."),
                                    ],
                                  ),
                                ),
                                context)),
                        _row_link(
                            "حاسبات تجرى المقابلات الشخصية لطلاب الدراسات العليا",
                            (context) => MainAppBar(
                                _tabController,
                                silverList(
                                  "حاسبات تعقد اجتماع مجلس الكلية بحضور ممثلين من الخارج.",
                                  Column(
                                    children: [
                                      image("assets/images/last_news_image.jpg",
                                          context),
                                      title2('10/11/2020', Colors.red.shade900),
                                      Description(""),
                                    ],
                                  ),
                                ),
                                context)),
                        _row_link(
                            'حاسبات تشارك فى ندوة حرب اكتوبر.',
                            (context) => CrisisAndDisasterUnit(
                                  tabController: _tabController,
                                )),
                        _row_link(
                            'حفل استقبال الطلاب الجدد بحضور رئيس الجامعة.',
                            (context) => CrisisAndDisasterUnit(
                                  tabController: _tabController,
                                )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        } else if (position == 1) {
          return Column(
            children: [
              MainCard(
                "اعلانات",
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Column(
                      children: [
                        _row_link(
                            'إستقبال الطلاب الجدد بكلية الحاسبات والمعلومات بجامعة الفيوم.',
                                (context) =>  MainAppBar(
                                    _tabController,
                                    silverList(
                                      "إستقبال الطلاب الجدد بكلية الحاسبات والمعلومات بجامعة الفيوم.",
                                      Column(
                                        children: [
                                          title2('26-25 أكتوبر2020', Colors.red.shade900),
                                          Description("تعلن جامعة الفيوم عن تنيظم كلية الحاسبات والمعلومات حفلاً لاستقبال الطلاب الجدد\n وذلك يوم الأثنين الموافق 26/10/2020 \nفى تمام الساعة (12) ظهراً بقاعة (1) بالمبنى الجديد"),
                                        ],
                                      ),
                                    ),
                                    context)),
                        _row_link(
                            "نتيجة كلية حاسبات و المعلومات  الفصل الدراسى الثانى الفرقة الأولى.",
                            (context) => MainAppBar(
                                _tabController,
                                silverList(
                                  "حاسبات تعقد اجتماع مجلس الكلية بحضور ممثلين من الخارج.",
                                  Column(
                                    children: [
                                      image("assets/images/last_news_image.jpg",
                                          context),
                                      title2('30-2 سبتمبر 2020', Colors.red.shade900),
                                      Description("يعلن مشروع نظم المعلومات الإدارية عن \nإعتماد وإعلان نتيجة كليه حاسبات و المعلومات الفرقة الأولى\nللدخول على النتيجة يرجى الضغط على اللينك ثم إدخال الرقم القومى\n"),
                                      /*       ****************************     */
                                      FlatButton(
                                        child: Text("http://fumist.fayoum.edu.eg/show_result_2/",style: TextStyle(color: Colors.lightBlueAccent),),
                                        onPressed: () {
                                          launch(
                                              'http://fumist.fayoum.edu.eg/show_result_2/');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                context)),
                        _row_link(
                            "نتيجة كلية الحاسبات والمعلومات الفرقة الثانية والثالثة.",
                            (context) =>MainAppBar(
                                _tabController,
                                silverList(
                                  "حاسبات تعقد اجتماع مجلس الكلية بحضور ممثلين من الخارج.",
                                  Column(
                                    children: [
                                      image("assets/images/last_news_image.jpg",
                                          context),
                                      title2('10/11/2020', Colors.red.shade900),
                                      Description(""),
                                    ],
                                  ),
                                ),
                                context)),
                        _row_link(
                            'فتح باب القيد والتسجيل ببرامج الدراسات العليا.',
                            (context) => CrisisAndDisasterUnit(
                                  tabController: _tabController,
                                )),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        } else if (position == 2) {
          return Column(
            children: [
              MainCard(
                "الوحدات والمراكز",
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Column(
                      children: [
                        _row_link(
                            "وحدة الأزمات والكوارث.",
                            (context) => CrisisAndDisasterUnit(
                                  tabController: _tabController,
                                )),
                        _row_link(
                            "وحدة متابعة الخريجين.",
                            (context) => GraduateFollowUpUnit(
                                  tabController: _tabController,
                                )),
                        _row_link(
                            'وحدة تطوير تدريس المقررات.',
                            (context) => CourseDevelopmentUnit(
                                  tabController: _tabController,
                                )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        } else if (position == 3) {
          return Column(
            children: [
              MainCard(
                "الوكالات",
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Column(
                      children: [
                        _row_link(
                            "وكالة شئون التعليم والطلاب.",
                            (context) => CrisisAndDisasterUnit(
                                  tabController: _tabController,
                                )),
                        _row_link(
                            "وكالة الدراسات العليا.",
                            (context) => CrisisAndDisasterUnit(
                                  tabController: _tabController,
                                )),
                        _row_link(
                            'وكالة شئون خدمة المجتمع.',
                            (context) => CrisisAndDisasterUnit(
                                  tabController: _tabController,
                                )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              )
            ],
          );
        }
      }, childCount: 4),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _row_link(String text, WidgetBuilder widgetBuilder) {
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
                    MaterialPageRoute(builder: widgetBuilder),
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
