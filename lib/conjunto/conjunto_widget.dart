import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../kits_ensaio/kits_ensaio_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
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
      body: SafeArea(
        child: StreamBuilder<List<EnsaioMusicalRecord>>(
          stream: queryEnsaioMusicalRecord(
            queryBuilder: (ensaioMusicalRecord) => ensaioMusicalRecord
                .where('nome_musica', isEqualTo: widget.musica),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: SpinKitDoubleBounce(
                    color: Color(0xFFF49F04),
                    size: 50,
                  ),
                ),
              );
            }
            List<EnsaioMusicalRecord> columnEnsaioMusicalRecordList =
                snapshot.data;
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: List.generate(columnEnsaioMusicalRecordList.length,
                  (columnIndex) {
                final columnEnsaioMusicalRecord =
                    columnEnsaioMusicalRecordList[columnIndex];
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => KitsEnsaioWidget(
                                nomemusica: widget.musica,
                                cantatda: widget.cantado,
                                playback: widget.playback,
                                conjunto: widget.conjunto,
                                barito: widget.barito,
                                soprano: widget.soprano,
                                baixo: widget.baixo,
                                contralto: widget.contralto,
                                tenor: widget.tenor,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xFFA5A5A5),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 5, 0),
                                      child: Text(
                                        columnIndex.toString(),
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Lexend Deca',
                                        ),
                                      ),
                                    ),
                                    AutoSizeText(
                                      widget.musica,
                                      style: FlutterFlowTheme.title1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.primaryColor,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
