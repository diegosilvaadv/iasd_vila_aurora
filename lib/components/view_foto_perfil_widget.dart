import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewFotoPerfilWidget extends StatefulWidget {
  ViewFotoPerfilWidget({
    Key key,
    this.perfilimg,
  }) : super(key: key);

  final String perfilimg;

  @override
  _ViewFotoPerfilWidgetState createState() => _ViewFotoPerfilWidgetState();
}

class _ViewFotoPerfilWidgetState extends State<ViewFotoPerfilWidget> {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      widget.perfilimg,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
