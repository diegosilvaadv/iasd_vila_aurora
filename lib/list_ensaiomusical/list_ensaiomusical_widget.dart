import '../add_musica/add_musica_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../kits_ensaio/kits_ensaio_widget.dart';
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
          'Kits Musicais',
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
                  PageTransition(
                    type: PageTransitionType.scale,
                    alignment: Alignment.bottomCenter,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: AddMusicaWidget(),
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
                  child: SpinKitThreeBounce(
                    color: FlutterFlowTheme.primaryColor,
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
                            PageTransition(
                              type: PageTransitionType.scale,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: KitsEnsaioWidget(
                                nomemusica:
                                    columnEnsaioMusicalRecord.nomeMusica,
                                cantatda: columnEnsaioMusicalRecord.cantada,
                                letra: columnEnsaioMusicalRecord.letra,
                                soprano: columnEnsaioMusicalRecord.soprano,
                                contrato: columnEnsaioMusicalRecord.contralto,
                                barito: columnEnsaioMusicalRecord.barito,
                                tenor: columnEnsaioMusicalRecord.tenor,
                                baixo: columnEnsaioMusicalRecord.baixo,
                                playback: columnEnsaioMusicalRecord.playback,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xFFA5A5A5),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-0.02, 4.8),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 35, 0, 0),
                                      child: Text(
                                        columnEnsaioMusicalRecord.conjunto,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.13, 0),
                                    child: AutoSizeText(
                                      columnEnsaioMusicalRecord.nomeMusica
                                          .maybeHandleOverflow(
                                        maxChars: 17,
                                        replacement: '…',
                                      ),
                                      style: FlutterFlowTheme.title1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.primaryColor,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 28, 0, 0),
                                    child: StreamBuilder<UsersRecord>(
                                      stream: UsersRecord.getDocument(
                                          currentUserReference),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: SpinKitThreeBounce(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                size: 50,
                                              ),
                                            ),
                                          );
                                        }
                                        final imageUsersRecord = snapshot.data;
                                        return InkWell(
                                          onDoubleTap: () async {
                                            if ((imageUsersRecord.adm) ==
                                                (true)) {
                                              await columnEnsaioMusicalRecord
                                                  .reference
                                                  .delete();
                                            }
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Image.network(
                                              'https://cdn0.iconfinder.com/data/icons/users-2/512/e33-512.png',
                                              width: 40,
                                              height: 40,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
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
