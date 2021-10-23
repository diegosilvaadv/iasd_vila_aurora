import '../add_musica/add_musica_widget.dart';
import '../backend/backend.dart';
import '../conjunto/conjunto_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ListEnsaiomusicalWidget extends StatefulWidget {
  ListEnsaiomusicalWidget({Key key}) : super(key: key);

  @override
  _ListEnsaiomusicalWidgetState createState() =>
      _ListEnsaiomusicalWidgetState();
}

class _ListEnsaiomusicalWidgetState extends State<ListEnsaiomusicalWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Conjuntos',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Lexend Deca',
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddMusicaWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.add_circle,
                color: Colors.white,
                size: 24,
              ),
            ),
          )
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: StreamBuilder<List<EnsaioMusicalRecord>>(
          stream: queryEnsaioMusicalRecord(),
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
                              builder: (context) => ConjuntoWidget(
                                conjunto: columnEnsaioMusicalRecord.conjunto,
                                musica: columnEnsaioMusicalRecord.nomeMusica,
                                cantado: columnEnsaioMusicalRecord.cantada,
                                playback: columnEnsaioMusicalRecord.playback,
                                soprano: columnEnsaioMusicalRecord.soprano,
                                contralto: columnEnsaioMusicalRecord.contralto,
                                barito: columnEnsaioMusicalRecord.barito,
                                baixo: columnEnsaioMusicalRecord.baixo,
                                tenor: columnEnsaioMusicalRecord.tenor,
                                letra: columnEnsaioMusicalRecord.letra,
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
                                    AutoSizeText(
                                      columnEnsaioMusicalRecord.conjunto,
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
