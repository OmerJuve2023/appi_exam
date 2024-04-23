import 'package:appi_exam/widgets/Iconss.dart';
import 'package:appi_exam/widgets/StyledText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledText("AppEProductoAP"),
      ),
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Iconss(icon: Icons.directions_car),
                ),
                Tab(
                  icon: Iconss(icon: Icons.directions_bike),
                ),
                Tab(icon: Iconss(icon: Icons.directions_transit)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Iconss(icon: Icons.directions_car),
              Iconss(icon: Icons.directions_bike),
              Iconss(icon: Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }
}
