import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ConjuntoWidget extends StatefulWidget {
  ConjuntoWidget({
    Key key,
    this.conjunto,
    this.musica,
    this.cantado,
    this.playback,
    this.soprano,
    this.contralto,
    this.barito,
    this.baixo,
    this.tenor,
    this.letra,
  }) : super(key: key);

  final String conjunto;
  final String musica;
  final String cantado;
  final String playback;
  final String soprano;
  final String contralto;
  final String barito;
  final String baixo;
  final String tenor;
  final String letra;

  @override
  _ConjuntoWidgetState createState() => _ConjuntoWidgetState();
}

class _ConjuntoWidgetState extends State<ConjuntoWidget> {
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
