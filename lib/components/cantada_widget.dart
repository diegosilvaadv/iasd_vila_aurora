import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CantadaWidget extends StatefulWidget {
  CantadaWidget({
    Key key,
    this.musica,
    this.letra,
    this.cantada,
    this.playback,
    this.tenor,
    this.barito,
    this.baixo,
    this.soprano,
    this.contralto,
  }) : super(key: key);

  final String musica;
  final String letra;
  final String cantada;
  final String playback;
  final String tenor;
  final String barito;
  final String baixo;
  final String soprano;
  final String contralto;

  @override
  _CantadaWidgetState createState() => _CantadaWidgetState();
}

class _CantadaWidgetState extends State<CantadaWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 230, 5, 0),
                child: Text(
                  widget.letra,
                  style: FlutterFlowTheme.subtitle1.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.primaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 220,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
          child: FlutterFlowVideoPlayer(
            path: widget.cantada,
            videoType: VideoType.network,
            autoPlay: false,
            looping: true,
            showControls: true,
            allowFullScreen: true,
            allowPlaybackSpeedMenu: false,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
          child: AutoSizeText(
            widget.musica,
            style: FlutterFlowTheme.bodyText1.override(
              fontFamily: 'Lexend Deca',
              color: FlutterFlowTheme.primaryDark,
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
