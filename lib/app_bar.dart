import 'package:fci_app/chat_screen.dart';
import 'package:fci_app/home_screen.dart';
import 'package:fci_app/taps/about_faculty_tab.dart';
import 'package:fci_app/taps/faculty_administration.dart';
import 'package:fci_app/taps/sections_tab.dart';
import 'package:fci_app/taps/students_tab.dart';
import 'package:flutter/material.dart';
import 'taps/projects_tab.dart';
import 'taps/activities_tab.dart';

// ignore: non_constant_identifier_names
Widget MainAppBar(TabController _tabController, Widget silverList,BuildContext context) {
  return Scaffold(

    //drawer: NavigationDrawer(),
    backgroundColor: Color.fromRGBO(227, 225, 225, 1),
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          actions: [
            IconButton(icon: Icon(Icons.home), onPressed: () {
              // ignore: unrelated_type_equality_checks
              if(context!=HomeScreen()){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen()));
              }else{
                return null;
              }

            },),
          ],
          leading: IconButton(icon: Icon(Icons.chat,color: Colors.white,size: 19,), onPressed: (){
            Navigator.pushNamed(context, ChatScreen.id);
          }),
          bottom: MainTabBar(_tabController),
          expandedHeight: 200,
          floating: true,
          snap: false,
          pinned: true,

          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/app_bar.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        silverList,
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget MainTabBar(TabController _tabController) {
  return TabBar(
    isScrollable: true,
    indicatorColor: Colors.transparent,
    tabs: [
      Tab(
        child: ActivitiesTab(),
      ),
      Tab(
        child: ProjectsTab(),
      ),
      Tab(
        child: StudentsTab(),
      ),
      Tab(
        child: SectionsTab(),
      ),
      Tab(
        child: FacultyAdministrationTab(),
      ),
      Tab(
        child: AboutFacultyTab(),
      ),
    ],
    controller: _tabController,
  );
}
