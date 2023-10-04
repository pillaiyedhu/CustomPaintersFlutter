import 'package:flutter/material.dart';
import 'package:sept14_custom_painter_try/widgets/CircularPaintWidget.dart';
import 'package:sept14_custom_painter_try/widgets/ImagePaintWidget.dart';
import 'package:sept14_custom_painter_try/widgets/LinePaintWidget.dart';
import 'package:sept14_custom_painter_try/widgets/RectangularPaintWidget.dart';
import 'package:sept14_custom_painter_try/widgets/RoundedRectangularPaintWidget.dart';
import 'package:sept14_custom_painter_try/widgets/SmileMaking.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List<Widget> tabNames = ['Line','Rectangular','Rounded Rectangular','Circle','Image'];
  //final TabController tabController = TabController(length: length, vsync: vsync);

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Custom Paints'),
          centerTitle: true,
          bottom: const TabBar(
            //controller: ,
            tabs: [
            Tab(text: 'Line'),
            Tab(text: 'Rectangular'),
            Tab(text: 'Rounded Rectangular'),
            Tab(text: 'Circle'),
            Tab(text: 'Image'),
            Tab(text:'Smile')
          ]),
        ),
        body: const TabBarView(
          //controller: ,
          children: [
            LinePaintWidget(),
            RectangularPaintWidget(),
            RoundedRectangularPaintWidget(),
            CircularPaintWidget(),
            ImagePaintWidget(),
            SmileMaking()
          ],
        ),
      ),
    );
  }
}
