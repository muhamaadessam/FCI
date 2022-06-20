import 'package:fci_app/app_bar.dart';
import 'package:fci_app/taps/tabs_design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import '../design.dart';

class StudentsTab extends StatefulWidget {
  @override
  _StudentsTabState createState() => _StudentsTabState();
}

class _StudentsTabState extends State<StudentsTab>
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

  String dropdownValue = 'الطلاب';

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
              if (newValue == 'الجدول الدراسي') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainAppBar(
                          _tabController,
                          silverList(
                              'الجداول الدراسية',
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    title2(
                                        'الفرقة الأولي', Colors.blue.shade800),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    image('assets/images/ss1.png', context),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    title2(
                                        'الفرقة الثانية', Colors.blue.shade800),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    image('assets/images/ss2.png', context),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    title2(
                                        'الفرقة الثالثة', Colors.blue.shade800),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    image('assets/images/ss3.png', context),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    title2('الفرقة الرابعة(علوم الحاسب)',
                                        Colors.blue.shade800),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    image('assets/images/ss4cs.png', context),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    title2('الفرقة الرابعة(نظم المعلومات)',
                                        Colors.blue.shade800),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    image('assets/images/ss4is.png', context),
                                    SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                ),
                              )),
                          context)),
                );
              } else if (newValue == 'جداول الأمتحانات') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainAppBar(
                          _tabController,
                          silverList(
                              'جداول امتحانات الفصل الدراسى الثاني للعام الجامعى 2019 - 2020 م',
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    title2(
                                        'الفرقة الأولي', Colors.blue.shade800),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    image('assets/images/ss1.png', context),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    title2(
                                        'الفرقة الثانية', Colors.blue.shade800),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    image('assets/images/ss2.png', context),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    title2(
                                        'الفرقة الثالثة', Colors.blue.shade800),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    image('assets/images/ss3.png', context),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    title2('الفرقة الرابعة(علوم الحاسب)',
                                        Colors.blue.shade800),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    image('assets/images/ss4cs.png', context),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    title2('الفرقة الرابعة(نظم المعلومات)',
                                        Colors.blue.shade800),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    image('assets/images/ss4is.png', context),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    title2('التخلفات', Colors.blue.shade800),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    image('assets/images/ss4is.png', context),
                                    SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                ),
                              )),
                          context)),
                );
              } else if (newValue == 'الامتحانات السابقه') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainAppBar(
                          _tabController,
                          silverList(
                              'الامتحانات السابقه',
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(children: [
                                  Container(
                                    child: RaisedButton(
                                      child: Text('الفرقة الأولى'),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MainAppBar(
                                                  _tabController,
                                                  silverList(
                                                      'الامتحانات السابقه للفرقة الأولى',
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              child:
                                                                  RaisedButton(
                                                                child: Text(
                                                                    "الفصل الدراسي الأول"),
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => MainAppBar(
                                                                              _tabController,
                                                                              silverList('الامتحانات السابقه للفصل الدراسي الأول', Column()),
                                                                              context)));
                                                                },
                                                              ),
                                                              width: double
                                                                  .infinity,
                                                            ),
                                                            Container(
                                                              child:
                                                                  RaisedButton(
                                                                child: Text(
                                                                    "الفصل الدراسي الثانى"),
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => MainAppBar(
                                                                              _tabController,
                                                                              silverList('الامتحانات السابقه للفصل الدراسي الثانى', Column()),
                                                                              context)));
                                                                },
                                                              ),
                                                              width: double
                                                                  .infinity,
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            )
                                                          ],
                                                        ),
                                                      )),
                                                  context)),
                                        );
                                      },
                                    ),
                                    width: double.infinity,
                                  ),
                                  Container(
                                    child: RaisedButton(
                                      child: Text('الفرقة الثانية'),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MainAppBar(
                                                  _tabController,
                                                  silverList(
                                                      'الامتحانات السابقه للفرقة الثانية',
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              child:
                                                                  RaisedButton(
                                                                child: Text(
                                                                    "الفصل الدراسي الأول"),
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => MainAppBar(
                                                                              _tabController,
                                                                              silverList('الامتحانات السابقه للفصل الدراسي الأول', Column()),
                                                                              context)));
                                                                },
                                                              ),
                                                              width: double
                                                                  .infinity,
                                                            ),
                                                            Container(
                                                              child:
                                                                  RaisedButton(
                                                                child: Text(
                                                                    "الفصل الدراسي الثانى"),
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => MainAppBar(
                                                                              _tabController,
                                                                              silverList('الامتحانات السابقه للفصل الدراسي الثانى', Column()),
                                                                              context)));
                                                                },
                                                              ),
                                                              width: double
                                                                  .infinity,
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            )
                                                          ],
                                                        ),
                                                      )),
                                                  context)),
                                        );
                                      },
                                    ),
                                    width: double.infinity,
                                  ),
                                  Container(
                                    child: RaisedButton(
                                      child: Text('الفرقة الثالثة'),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MainAppBar(
                                                  _tabController,
                                                  silverList(
                                                      'الامتحانات السابقه للفرقة الثالثة',
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              child:
                                                                  RaisedButton(
                                                                child: Text(
                                                                    "الفصل الدراسي الأول"),
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => MainAppBar(
                                                                              _tabController,
                                                                              silverList('الامتحانات السابقه للفصل الدراسي الأول', Column()),
                                                                              context)));
                                                                },
                                                              ),
                                                              width: double
                                                                  .infinity,
                                                            ),
                                                            Container(
                                                              child:
                                                                  RaisedButton(
                                                                child: Text(
                                                                    "الفصل الدراسي الثانى"),
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => MainAppBar(
                                                                              _tabController,
                                                                              silverList('الامتحانات السابقه للفصل الدراسي الثانى', Column()),
                                                                              context)));
                                                                },
                                                              ),
                                                              width: double
                                                                  .infinity,
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            )
                                                          ],
                                                        ),
                                                      )),
                                                  context)),
                                        );
                                      },
                                    ),
                                    width: double.infinity,
                                  ),
                                  Container(
                                    child: RaisedButton(
                                      child:
                                          Text('الفرقة الرابعة(علوم الحاسب)'),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MainAppBar(
                                                  _tabController,
                                                  silverList(
                                                      'الامتحانات السابقه للفرقة الرابعة(علوم الحاسب)',
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              child:
                                                                  RaisedButton(
                                                                child: Text(
                                                                    "الفصل الدراسي الأول"),
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => MainAppBar(
                                                                              _tabController,
                                                                              silverList('الامتحانات السابقه للفصل الدراسي الأول', Column()),
                                                                              context)));
                                                                },
                                                              ),
                                                              width: double
                                                                  .infinity,
                                                            ),
                                                            Container(
                                                              child:
                                                                  RaisedButton(
                                                                child: Text(
                                                                    "الفصل الدراسي الثانى"),
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => MainAppBar(
                                                                              _tabController,
                                                                              silverList('الامتحانات السابقه للفصل الدراسي الثانى', Column()),
                                                                              context)));
                                                                },
                                                              ),
                                                              width: double
                                                                  .infinity,
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            )
                                                          ],
                                                        ),
                                                      )),
                                                  context)),
                                        );
                                      },
                                    ),
                                    width: double.infinity,
                                  ),
                                  Container(
                                    child: RaisedButton(
                                      child:
                                          Text('الفرقة الرابعة(نظم المعلومات)'),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MainAppBar(
                                                  _tabController,
                                                  silverList(
                                                      'الامتحانات السابقه للفرقة الرابعة(نظم المعلومات)',
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              child:
                                                                  RaisedButton(
                                                                child: Text(
                                                                    "الفصل الدراسي الأول"),
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => MainAppBar(
                                                                              _tabController,
                                                                              silverList('الامتحانات السابقه للفصل الدراسي الأول', Column()),
                                                                              context)));
                                                                },
                                                              ),
                                                              width: double
                                                                  .infinity,
                                                            ),
                                                            Container(
                                                              child:
                                                                  RaisedButton(
                                                                child: Text(
                                                                    "الفصل الدراسي الثانى"),
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => MainAppBar(
                                                                              _tabController,
                                                                              silverList('الامتحانات السابقه للفصل الدراسي الثانى', Column()),
                                                                              context)));
                                                                },
                                                              ),
                                                              width: double
                                                                  .infinity,
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            )
                                                          ],
                                                        ),
                                                      )),
                                                  context)),
                                        );
                                      },
                                    ),
                                    width: double.infinity,
                                  )
                                ]),
                              )),
                          context)),
                );
              } else if (newValue == 'دليل الطالب') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainAppBar(
                            _tabController,
                            silverList(
                                'دليل الطالب',
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      _row_link('دليل الطالب 2017',
                                          'assets/pdfs/guide10.pdf'),
                                      _row_link('دليل الطالب 2015',
                                          'assets/pdfs/guide11.pdf'),
                                      _row_link('دليل الطالب 2011-2012',
                                          'assets/pdfs/guide11.pdf')
                                    ],
                                  ),
                                )),
                            context)));
              } else if (newValue == 'مشروعات التخرج') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainAppBar(
                            _tabController,
                            silverList(
                                'مشروعات التخرج',
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      _row_link('مشروعات التخرج لعام 2017-2018',
                                          'assets/pdfs/GrProjects4.pdf'),
                                      _row_link('مشروعات التخرج لعام 2016-2017',
                                          'assets/pdfs/GrProjects3.pdf'),
                                      _row_link('مشروعات التخرج لعام 2015-2016',
                                          'assets/pdfs/GrProjects1.pdf'),
                                    ],
                                  ),
                                )),
                            context)));
              }
            });
          },
          dropdownColor: Color.fromRGBO(244, 244, 244, 1),
          items: <String>[
            'الجدول الدراسي',
            'جداول الأمتحانات',
            'بوابة البريد الالكتروني',
            'الامتحانات السابقه',
            'دليل الطالب',
            'نتائج الامتحانات',
            'مشروعات التخرج',
            'أرقام الجلوس',
            'توزيع اللجان',
            'شكاوي الطلاب',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: TabDesign(value, Colors.grey.shade200),
            );
          }).toList(),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _row_link(String text, String doc) {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDF.assets(
                      doc,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                );
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
