import 'package:fci_app/app_bar.dart';
import 'package:fci_app/taps/tabs_design.dart';
import 'package:fci_app/unites/CourseDevelopmentUnit.dart';
import 'package:fci_app/unites/CrisisAndDisasterUnit.dart';
import 'package:fci_app/unites/GraduateFollow-upUnit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../design.dart';
import '../main_card.dart';

class ProjectsTab extends StatefulWidget {
  @override
  _ProjectsTabState createState() => _ProjectsTabState();
}

class _ProjectsTabState extends State<ProjectsTab>
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

  String dropdownValue = 'المشروعات';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        hint: TabDesign(dropdownValue, Colors.grey.shade200),
        elevation: 1,
        iconSize: 0,
        style: TextStyle(
          color: Color.fromRGBO(162, 162, 162, 1),
        ),
        onChanged: (String newValue) {
          setState(() {
            if (newValue == 'ضمان الجودة') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainAppBar(
                      _tabController,
                      silverList(
                        'وحدة ضمان الجودة',
                        Column(
                          children: [
                            row2('رؤية الوحدة:',
                                'الارتقاء بمكانة كلية الحاسبات والمعلومات – جامعة الفيوم كى تكون كيانا معتمدا قادرا على تحقيق التنافسيه على المستوى المحلى و الاقليمى والدولى.'),
                            row2('رسالة الوحدة :',
                                'تسعى الوحدة إلى نشر ثقافة الجودة للإرتقاء بالمنظومة التعليمية والأنشطة البحثية و الخدمية التى تقدمها الكلية فى ضوء معايير الهيئة القومية لضمان جودة التعليم، وذلك لكسب ثقة المستفيدين بمخرجات العملية التعليمية بما يحقق التنافسيه محليا وإقليميا ودوليا.'),
                            row2('تعريف ضمان الجودة:',
                                'هي الوسيلة للتأكد من تحقيق القدرة المؤسسية الفاعلية التعليمية وتطبيق المعايير الاكاديمية ,المستمدة من رسالة المؤسسة المعنية ,والتي تم تعريفها وتحقيقها بما يتوافق مع المعايير المناظرة لها سواء قوميا او عالميا .وأن مستوي جودة فرص التعلم و الابحاث و المشاركة المجتمعية تعتبر ملائمة وتستوفي توقعات مختلف انواع المستفيدين .'),
                            row2('تعريف الإعتماد:',
                                'الاعتراف الذي يمنح لمؤسسة ما,اذا كانت تستطيع اثبات أن برامجها تتوافق مع المعايير المعلنه و المعتمدة و ان لديها انظمة قائمة لضمان الجوده و التحسين المستمر لانشطتها الاكاديمية وذلك وفقا للضوابط المعلنه التي تحددها جهه الاعتماد.'),
                            row2('ماذا لو لم يتم الاعتماد :',
                                'لو لم يتم الاعتماد فسوف يتعرض جميع الخرجين للمشاكل الآتية:\n• ضعف فرص العمل في السوق المحلية و الإقليمية و العالمية مقارنة بخريجي الكليات المعتمدة.\n• أن يتمكن خريج الكلية الغير معتمدة من تحضير أي معادلة دراسية تابعة لكلية عالمية أو حتى إقليمية. و إذا رغب في المعادلة فسوف يضطر لتحضيرها عن طريق كلية أخرى معتمدة.\n• فقدان الكلية لهيكلها المستقل و انضمامها اسما و إدارة و علما إلى كلية حاسبات ومعلومات أخرى معتمدة.'),
                            SizedBox(
                              height: 16,
                            )
                          ],
                        ),
                      ),
                      context),
                ),
              );
            } else if (newValue == 'نظام تقويم الطلاب') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainAppBar(
                      _tabController,
                      silverList(
                        'أهمية نظام تقويم الطلاب',
                        Column(
                          children: [
                            row('يعد التقويم من أهم حلقات المنظومة التعليمية، كما يعد أكثر العناصر تداخلا مع كل مكونات العملية التعليمية، من (معلم) و(متعلم) و(منهج). وبدون التقويم، ومعاييره ومواصفاته المعتمدة، سوف يغيب تطبيق مبدأ العدالة وتكافؤ الفرص، بين خريجي الكلية الواحدة، بل وبين خريجي الجامعات المصرية بعضها البعض. ولذلك كان العمل على صياغة معايير التقويم لكافة أطراف العملية التعليمية، وتحديثها، وتطويرها، ومواكبتها لكل المستجدات التكنولوجية الراهنة.'),
                            SizedBox(
                              height: 8,
                            ),
                            Description(
                                'من هنا جاءت أهمية هذه الوحدة الذي يعمل على تحسين مستوى خريجي الجامعة، الذين لديهم القدرة الكافية على مواجهة متطلبات سوق العمل المحلى والدولي، والتي تعتمد على المهارات العليا للتعلم.\n\nإن أهمية هذه الوحدة: تعود إلى تدعيمه كل من :'),
                            SizedBox(
                              height: 8,
                            ),
                            row('تطوير أساليب ووسائل التقويم واستخدام طرق حديثة للتقويم.'),
                            row('تحقيق السرعة والدقة والشفافية والعدالة في أعمال التقويم والامتحانات والمتابعة والإحصائيات.'),
                            row('المساهمة في تحقيق هوية الجامعة.'),
                            row('التأكيد على هيمنة الإدارة المتكاملة الإلكترونية التي من شأنها أن تحقق جودة بيئة التعليم والتعلم بالجامعة'),
                            row('تدعيم التعليم الإليكتروني.'),
                            row('العمل على بناء بنوك الأسئلة المنظمة، التي تعكس المخرجات التعليمية المستهدفة وتقيس مدى تحقق المعايير الأكاديمية للبرامج.'),
                            row('الإسهام في توحيد معايير ومواصفات الامتحانات لطلاب التخصص الواحد في الجامعات المختلفة بما يحقق العدالة بين خريجي الجامعات المصرية والكليات المتناظرة.'),
                            row('تحقيق العدالة بين طلاب التخصص الواحد في الكليات المتناظرة.'),
                            row('تصحيح مسار عمليتي التعليم والتعلم لتحقيق الجودة .'),
                            row('ربط البرنامج الدراسي بمتطلبات سوق العمل .'),
                            SizedBox(
                              height: 16,
                            )
                          ],
                        ),
                      ),
                      context),
                ),
              );
            } else if (newValue == 'مركز الخدمة العامة') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainAppBar(
                      _tabController,
                      silverList(
                        'مركز الخدمة العامة',
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              _row_link(
                                  'تشكيل مجلس الادارة',
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
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
                                                  'ا.د/ رانيا أحمد عبد العظيم'),
                                              column('عميد الكلية'),
                                              column('رئيسا'),
                                            ]),
                                        TableRow(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                            ),
                                            children: [
                                              column('أ.م.د/ أميرة محمد إدريس'),
                                              column(
                                                  'وكيل الكلية لشئون خدمة المجتمع'),
                                              column('نائب الرئيس'),
                                            ]),
                                        TableRow(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                            ),
                                            children: [
                                              column('د/ محمد حسن '),
                                              column('مدير المركز'),
                                              column('عضوا'),
                                            ]),
                                        TableRow(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                            ),
                                            children: [
                                              column(
                                                  'أ.م. د/ هيثم توفيق على الفيل'),
                                              column(
                                                  'وكيل الكلية لشئون التعليم والطلاب'),
                                              column('عضوا'),
                                            ]),
                                        TableRow(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                            ),
                                            children: [
                                              column('د / شرين محمد على طايع '),
                                              column('مدرس بقسم علوم الحاسب'),
                                              column('عضوا'),
                                            ]),
                                        TableRow(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                            ),
                                            children: [
                                              column('د/رشا محمد بدري	'),
                                              column(
                                                  'مدرس بقسم نظم المعلومات	'),
                                              column('عضوا'),
                                            ]),
                                        TableRow(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                            ),
                                            children: [
                                              column('ا/محمد عبد الفتاح حسن'),
                                              column('مدير إدارة الكلية'),
                                              column('عضوا'),
                                            ]),
                                      ],
                                    ),
                                  )),
                              row_pdf(' ورش العمل', 'workshops', context),
                              row_pdf('الندوات', 'Seminars', context),
                              row_pdf('خطة الإخلاء', 'Evacuationplan', context),
                              row_pdf('بروتوكلات', 'Protocols', context),
                              SizedBox(
                                height: 16,
                              )
                            ],
                          ),
                        ),
                      ),
                      context),
                ),
              );
            } else if (newValue == 'وحدة الازمات والكوارث') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CrisisAndDisasterUnit(
                            tabController: _tabController,
                          )));
            } else if (newValue == 'وحدة متابعة الخريجين') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          GraduateFollowUpUnit(tabController: _tabController)));
            } else if (newValue == 'وحدة الخدمات الإلكترونية') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainAppBar(
                          _tabController,
                          silverList(
                              'وحدة الخدمات الإلكترونية',
                              Container(
                                color: Color.fromRGBO(227, 225, 225, 1),
                                child: Column(
                                  children: [
                                    MainCard(
                                      ' عن الوحدة',
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            row('سعياً من مشروع الــ ICTP الى تفعيل خدمات تكنولوجيا المعلومات لتصل إلي المستفيدين بالكليات من طلاب وأعضاء هيئة التدريس وموظفين فقد تم البدء في إنشاء وحدات لتكنولوجيا المعلومات بالكليات. يهدف ICTP إلى إنشاء مشروع وحدة الخدمات الالكترونية في كل كليات الجامعات خلال الخمس أعوام القادمة بشكل تدريجي بواقع 20% من كليات كل جامعة سنوياً.'),
                                            Description(
                                                'تعتبر هذه الوحدات حلقة الوصل بين المشاريع الست المقدمة من ICTP على مستوى الجامعات وبين مختلف الكليات. تهدف هذه الوحدات بالإضافة لزيادة فاعلية مشاريع الجامعات (الشبكة – نظم المعلومات الإدارية – التدريب – المكتبة الرقمية – التعليم الإلكتروني – البوابة الرقمية) الى تقديم خدمات متميزة في تكنولوجيا المعلومات للكليات.'),
                                            row_pdf('انشطة الوحدة', 'act_it',
                                                context)
                                          ],
                                        ),
                                      ),
                                    ),
                                    MainCard(
                                      'فريق العمل',
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            Card(
                                              color: Colors.grey.shade200,
                                              elevation: 5,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    centerTitle('مدير الوحدة'),
                                                    image(
                                                        'assets/images/cologo.jpg',
                                                        context),
                                                    column(
                                                        "د. حسين عكاشه محمد"),
                                                    column(
                                                        'hom02@fayoum.edu.eg'),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Card(
                                              color: Colors.grey.shade200,
                                              elevation: 5,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    column(
                                                        "محمد مصطفى عبد الفتاح على"),
                                                    column(
                                                        ' بكالوريوس حاسبات ومعلومات'),
                                                    column('مهندس الشبكات'),
                                                    column(
                                                        'mm119@fayoum.edu.eg'),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Card(
                                              color: Colors.grey.shade200,
                                              elevation: 5,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    column("ريمون سمير شفيق	"),
                                                    column(
                                                        ' بكالوريس حاسب الى'),
                                                    column(' فنى الشبكات'),
                                                    column(
                                                        'rs111@fayoum.edu.eg '),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Card(
                                              color: Colors.grey.shade200,
                                              elevation: 5,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    column(" محمد حسنى معوض"),
                                                    column(
                                                        ' بكالوريوس التربية النوعية(تكنولوجيا تعليم)'),
                                                    column(
                                                        ' منسق التدريب للمقررات الالكترونية - مسئول دعم لنظام المعلومات الإدارية	'),
                                                    column(
                                                        'mh111@fayoum.edu.eg '),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Card(
                                              color: Colors.grey.shade200,
                                              elevation: 5,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    column(" ضيف قطب شعبان"),
                                                    column(' بكالوريس تجارة'),
                                                    column(
                                                        ' مسئول البرامج والنظم - محرر البوابة الالكترونية'),
                                                    column(
                                                        'dk111@fayoum.edu.eg'),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    MainCard(
                                      ' مهام فريق العمل',
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            title2('محرر البوابة الإلكترونية:',
                                                Colors.red.shade900),
                                            Description(
                                                '1.جمع ونشر أخبار الكلية .\n2.تحديث بيانات الكلية على البوابة الإلكترونية .\n3.نشر الجداول الدراسية لمختلف البرامج الدراسية بالكلية .\n4.متابعة نشاط الأخبار للمستخدمين على مستوى الكلية – الأقسام – اتحاد الطلاب – مشاريع الأبحاث ومختلف جهات الكلية .\n5.التنسيق بين إدارات الجودة لتنشر واستكمال بيانات المناهج الدراسية على البوابة.\n6. حلقة وصل بين مشروع وحدة الخدمات الإليكترونية بالكلية ومشروع البوابة الإلكترونية بالجامعة.\n7. التعاون في تنفيذ باقي أنشطة الوحدة بناء على توجيهات مدير الوحدة.'),
                                            title2(
                                                'مسئول دعم نظام المعلومات الإدارية:',
                                                Colors.red.shade900),
                                            Description(
                                                '1. تدريب الموظفين على اسلوب العمل في نظام MIS.\n2. تدريب أعضاء هيئة التدريس على النظم المتعلقة بعملهم مثل الكنترول ونظام الجودة.\n3. تقديم الدعم الفني لمستخدمي نظام MIS بالكلية.\n4. الإبلاغ عن مشاكل النظم ومتابعة حلها.\n5. عمل تقارير دورية عن كفاءة العمل في النظم ومدى تطبيقها في الكلية ومعوقات التطبيق ورفعها لمدير الوحدة.\n6. التنسيق مع مشروع نظم المعلومات الإدارية المركزي بالجامعة في جميع النواحي الفنية.\n7. التعاون في تنفيذ باقي أنشطة الوحدة بناء على توجيهات مدير الوحدة.'),
                                            title2('مسئول النظم والبرامج:',
                                                Colors.red.shade900),
                                            Description(
                                                '1. إدارة حسابات أعضاء هيئة التدريس والطلاب على المكتبة الرقمية ونظم المعلومات الإدارية والبوابة الإلكترونية والبريد الإلكتروني ونظام إدارة المحتوى للتعليم الإليكتروني.\n2. التنسيق بين مسئولي البيانات بنظم المعلومات الإدارية ومدير البوابة الإلكترونية على مستوى الجامعة للتحديث وإصلاح وإستكمال البيانات ، وتلقي الشكاوى الخاصة بالبيانات وإصلاحها طبقاً لصلاحيتها.\n3. التدريب ونشر الوعي بين أعضاء هيئة التدريس بالكلية في الأنشطة التالية:\n- كيفية غنشاء المواقع الشخصية.\n- كيفية رفع مصادر الأستاذ من أبحاث وأنشطة. ت‌. كيفية إدارة منتديات الطلاب ويمكن للأستاذ أن يحيل بعضا من صلاحياته لهذا المسئول.\n- إعطاء صلاحيات التعامل مع المنهج الدراسي للأساتذة والمعيدين.\n- تدريب أعضاء هيئة التدريس ومعاونيهم على رفع مصادر التعلم للمادة الدراسية والتعامل مع مكتبات البوابة الإليكترونية.\n4. التدريب ونشر الوعي بين الطلاب على كيفية الإستفادة من البوابات الإليكترونية.\n5. التنسيق مع المشروعات المناظرة في الجامعة في جميع النواحي الفنية لكل نشاط.'),
                                            title2('مهندس الشبكات :',
                                                Colors.red.shade900),
                                            Description(
                                                '1.متابعة عمل الشبكة الداخلية بالكلية.\n2.عمل حصر للوضع الحالى لشبكة الكلية والمتطلبات الحالية والمستقبلية .\n3.إعداد التقارير الدورية عن الأعطال وكفاءة الشبكة ومعدل الإستخدام.\n4.التأكد من تحميل وعمل البرامج الأصلية ومضادات الفيروسات .\n5.التنسيق والتعاون مع إدارة شبكة الجامعة بما يحقق الأهداف والسياسات المطلوبة.\n6.القيام بعمل التوسعات المطلوبة لشبكة الكلية السلكية واللاسلكية بالتنسيق مع شبكة الجامعة .\n7.تفعيل أجهزة الفيديو كونفرانس بالكلية .\n8.الإشراف على الصيانة الدورية لأجهزة الحاسب وملحقاتها.\n10.التعاون فى تنفيذ باقى أنشطة الوحدة بناء على توجيهات مدير الوحدة.'),
                                            title2('فنى شبكات :',
                                                Colors.red.shade900),
                                            Description(
                                                '1.إنشاء وتطوير الشبكات الداخلية بالكلية وصيانة أعطال الكابلات.\n2.تحميل البرامج الأصلية ونسخ مضادات الفيروسات .\n3.صيانة أجهزة الحاسب وملحقاتها.\n4.التعاون فى تنفيذ باقى أنشطة الوحدة بناءً على توجيهات مدير الوحدة'),
                                            title2('منسق التدريب :',
                                                Colors.red.shade900),
                                            Description(
                                                '1- تفعيل استخدام المقررات المنتجه من الجامعات الاخرى والمرتبطه بالتخصصات المختلفه بالكليه\n2-تدريب أعضاء هيئة التدريس والطلاب والهيئات المعاونه على إستخدام المقررات الالكترونيه\n3-إعداد بيانات الطلاب وأعضاء هيئة التدريس للمقررات الالكترونيه التى يتم تفعيلها بالكلية وتسليمها لمركز الانتاج بالجامعه لاعداد حسابات للطلاب على نظام تطوير المحتوى\n4-التنسيق مع المشروعات المناظره فى الجامعه فى جميع النواحى الفنيه لكل نشاط\n5-التعاون فى تنفيذ باقى أنشطه الوحده بناء على توجيهات مدير الوحده'),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          context)));
            } else if (newValue == 'وحدة تطوير المقررات') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CourseDevelopmentUnit(
                          tabController: _tabController)));
            }
          });
        },
        dropdownColor: Color.fromRGBO(244, 244, 244, 1),
        items: <String>[
          'ضمان الجودة',
          'نظام تقويم الطلاب',
          'مركز الخدمة العامة',
          'وحدة الازمات والكوارث',
          'وحدة متابعة الخريجين',
          'وحدة الخدمات الإلكترونية',
          'وحدة تطوير المقررات',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: TabDesign(value, Colors.grey.shade300),
          );
        }).toList(),
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
              Icons.arrow_back_ios,
              color: Color.fromRGBO(0, 128, 102, 1),
              size: 11,
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
