// main.dart

import 'package:flutter/material.dart';

// 1. Container Widget
import 'package:flutter_gojin_rpl3/container_widget/container_widget.dart';

// 2. Grid View
import 'package:flutter_gojin_rpl3/grid_view/grid_basic.dart';
import 'package:flutter_gojin_rpl3/grid_view/grid_builder.dart';
import 'package:flutter_gojin_rpl3/grid_view/latihan3.dart';

// 3. List View
import 'package:flutter_gojin_rpl3/list_view/latihan.dart';
import 'package:flutter_gojin_rpl3/list_view/list_basic.dart';
import 'package:flutter_gojin_rpl3/list_view/list_builder.dart';
import 'package:flutter_gojin_rpl3/list_view/list_builder2.dart';
import 'package:flutter_gojin_rpl3/list_view/list_separated.dart';

// 4. Navigation
import 'package:flutter_gojin_rpl3/navigation/about_page.dart';
import 'package:flutter_gojin_rpl3/navigation/contoh_nav.dart';

// 5. Row & Column
import 'package:flutter_gojin_rpl3/row_column.dart/column_widget.dart';
import 'package:flutter_gojin_rpl3/row_column.dart/layout_widget.dart';
import 'package:flutter_gojin_rpl3/row_column.dart/newproject.dart';
import 'package:flutter_gojin_rpl3/row_column.dart/row_column.dart';
import 'package:flutter_gojin_rpl3/row_column.dart/row_widget.dart';

// 6. SizedBox & Stack
import 'package:flutter_gojin_rpl3/sized_box_widget/ExpandedWidget.dart';
import 'package:flutter_gojin_rpl3/sized_box_widget/Latihann.dart';
import 'package:flutter_gojin_rpl3/sized_box_widget/LayoutDua.dart';
import 'package:flutter_gojin_rpl3/sized_box_widget/LayoutEmpat.dart';
import 'package:flutter_gojin_rpl3/sized_box_widget/LayoutSatu.dart';
import 'package:flutter_gojin_rpl3/sized_box_widget/LayoutTiga.dart';
import 'package:flutter_gojin_rpl3/sized_box_widget/SizedBoxWidget.dart';
import 'package:flutter_gojin_rpl3/sized_box_widget/StackWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // Home
        '/': (context) => const MyNav(),

        // Navigation
        '/about': (context) => const AboutPage(nama: "ghaizan", kelas: "RPL3", umur: 17),

        // Grid View
        '/grid': (context) => const MyLatihanGw(),
        '/grid_basic': (context) => const MyGridGw(),
        '/grid_builder': (context) => MyGridBuildergw(),
        '/mylatihangw': (context) => const MyLatihanGw(),

        // List View
        '/list': (context) => const ListBasic(),
        '/list_basic': (context) => const ListBasic(),
        '/list_builder': (context) => const ListBuilderWidget(),
        '/list_builder2': (context) => const ListBuilder2(),
        '/list_separated': (context) => const ListSeparatedBuilder(),
        '/mywidgetgw': (context) => const MyWidgetGw(),

        // Row & Column
        '/kartu': (context) => const Kartu(),
        '/column_widget': (context) => const ColumnWidget(),
        '/row_widget': (context) => const RowWidget(),
        '/row_column': (context) => const RowColumnWidget(),
        '/layout_widget': (context) => const LayoutRowColumn(),

        // SizedBox & Stack
        '/container': (context) => const BelajarContainer(),
        '/sized_box': (context) => const Sizedboxwidget(),
        '/expanded': (context) => const ExpandedWidget(),
        '/stack': (context) => const Stackwidget(),
        '/layout_satu': (context) => const KartuProfil(),
        '/layout_dua': (context) => const Layoutdua(),
        '/layout_tiga': (context) => const Layouttiga(),
        '/layout_empat': (context) => const ProfilWidget(),
        '/latihan_profil': (context) => const LatihanWidget(),
      },
    );
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "udah siap belom",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.red,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
