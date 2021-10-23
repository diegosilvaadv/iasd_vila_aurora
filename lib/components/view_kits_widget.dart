import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewKitsWidget extends StatefulWidget {
  ViewKitsWidget({
    Key key,
    this.kits,
    this.letra,
  }) : super(key: key);

  final String kits;
  final String letra;

  @override
  _ViewKitsWidgetState createState() => _ViewKitsWidgetState();
}

class _ViewKitsWidgetState extends State<ViewKitsWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowVideoPlayer(
                path: widget.kits,
                videoType: VideoType.network,
                autoPlay: false,
                looping: true,
                showControls: true,
                allowFullScreen: true,
                allowPlaybackSpeedMenu: false,
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1000,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: AutoSizeText(
                  widget.letra,
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
