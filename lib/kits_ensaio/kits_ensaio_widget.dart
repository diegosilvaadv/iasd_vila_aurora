import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class KitsEnsaioWidget extends StatefulWidget {
  KitsEnsaioWidget({
    Key key,
    this.nomemusica,
    this.cantatda,
    this.playback,
    this.conjunto,
    this.barito,
    this.soprano,
    this.baixo,
    this.contralto,
    this.tenor,
    this.letra,
  }) : super(key: key);

  final String nomemusica;
  final String cantatda;
  final String playback;
  final String conjunto;
  final String barito;
  final String soprano;
  final String baixo;
  final String contralto;
  final String tenor;
  final String letra;

  @override
  _KitsEnsaioWidgetState createState() => _KitsEnsaioWidgetState();
}

class _KitsEnsaioWidgetState extends State<KitsEnsaioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          widget.conjunto,
          style: FlutterFlowTheme.subtitle1.override(
            fontFamily: 'Lexend Deca',
            color: Colors.white,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}
