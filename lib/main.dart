import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/BigMadeBurger3.dart';
import 'package:untitled3/Edeka2.dart';
import 'package:untitled3/FreeDelivery2.dart';

import 'Alert_Dialog.dart';
import 'Animation/AnimatedAlign.dart';
import 'Animation/AnimatedContainer.dart';
import 'Animation/AnimatedOpacity.dart';
import 'Animation/AnimatedPadding.dart';
import 'Animation/AnimatedRotation.dart';
import 'Animation/ImplicitAnimation.dart';
import 'BigMadeBurger1.dart';
import 'BigMadeBurger2.dart';
import 'BottomNavigationBar.dart';
import 'BottomTabBar.dart';
import 'Common/Common_TextField.dart';
import 'Common/common_use.dart';
import 'Constrain_Box.dart';
import 'Data_Table.dart';
import 'DatePicker.dart';
import 'DateRangePicker.dart';
import 'DialogBox.dart';
import 'Dismissible.dart';
import 'DragableScollableSheet.dart';
import 'Drawer.dart';
import 'Edeka1.dart';
import 'ExpansionTile.dart';
import 'ExplicitAnimation/AlignTween.dart';
import 'ExplicitAnimation/BorderRadiusTween.dart';
import 'ExplicitAnimation/BorderTween.dart';
import 'ExplicitAnimation/CurveTween.dart';
import 'ExplicitAnimation/DecorationTween.dart';
import 'ExplicitAnimation/TextStyleTween.dart';
import 'FloatingActionButton.dart';
import 'Food/BottomNavigationBar.dart';
import 'Food/ExplorePage.dart';
import 'Food/HomePage.dart';
import 'FreeDelivery.dart';
import 'FutureBuilder/FutureBuilder.dart';
import 'FutureBuilder/FutureBuilderPractice.dart';
import 'ImageFiltered.dart';
import 'ListSeparatorBuilder.dart';
import 'List_Wheel_Scroll_View.dart';
import 'Mina/HomePage.dart';
import 'Mina/NextPage.dart';
import 'Mina/ShoppingCart.dart';
import 'MixWidget.dart';
import 'OrganicFood1.dart';
import 'OrganicFood2.dart';
import 'OrganicFood3.dart';
import 'PageViewBuildWidget.dart';
import 'Reorderable_List.dart';
import 'Search.dart';
import 'SliverAppBar.dart';
import 'StreamBuilder/stream_builder_demo.dart';
import 'StreamBuilder/strean_builder_practice.dart';
import 'TextFormField.dart';
import 'TimePicker.dart';
import 'WhatsApp/AppBar.dart';
import 'appbar.dart';
import 'bottom_nav_bar.dart';
import 'clipper_path.dart';
import 'sliderwidget.dart';
import 'stfbuttons.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CliperPath(),
        );
      },
    );
  }
}
