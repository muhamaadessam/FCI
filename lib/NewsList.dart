import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fci_app/app_bar.dart';
import 'package:flutter/material.dart';
import 'design.dart';

final _firestore = Firestore.instance;

class DataLine extends StatefulWidget {
  @override
  _DataLineState createState() => _DataLineState();
}

class _DataLineState extends State<DataLine>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 5, length: 6, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /*  return MainAppBar(
        _tabController, silverList('أرشيف الاخبار', DataStream()), context);*/
    return Scaffold(appBar: AppBar(), body: DataStream(tabController: tabController,));
  }
}

class DataStream extends StatelessWidget {
  final TabController tabController;

  const DataStream({Key key, this.tabController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('news').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.teal.shade200,
            ),
          );
        } else {
          final messages = snapshot.data.documents;
          List<LineData> linesData = [];
          for (var message in messages) {
            final date = message.data['date'];
            final data = message.data['new'];
            final title = message.data['title'];

            final lineData = LineData(
              date: date,
              data: data,
              title: title,
              tabController: tabController,
            );
            linesData.add(lineData);
          }
          return ListView(
            //reverse: true,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: linesData,
          );
        }
      },
    );
  }
}

class LineData extends StatelessWidget {
  final String data, title, date;
  final TabController tabController;

  const LineData({Key key, this.data, this.title, this.date, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              date,
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 16,
                  backgroundColor: Colors.amber),
            ),
          ),
          SizedBox(width: 2),
          Expanded(
              child: Text(
            title,
            style: TextStyle(
                color: Colors.black, fontSize: 16, backgroundColor: Colors.red),
          )),
        ],
      ),
      onPressed: () {
       return MainAppBar(tabController, silverList(title,Column(children: [
         Text(date),
         Text(data),
       ],)), context);
      },
    );
  }
}
