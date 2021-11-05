import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewEventsWidget extends StatefulWidget {
  ViewEventsWidget({
    Key key,
    this.enventphoto,
  }) : super(key: key);

  final String enventphoto;

  @override
  _ViewEventsWidgetState createState() => _ViewEventsWidgetState();
}

class _ViewEventsWidgetState extends State<ViewEventsWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Image.network(
              widget.enventphoto,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
