import '../add_pregadores/add_pregadores_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../detalhes_pregadores/detalhes_pregadores_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PregadoresWidget extends StatefulWidget {
  PregadoresWidget({Key key}) : super(key: key);

  @override
  _PregadoresWidgetState createState() => _PregadoresWidgetState();
}

class _PregadoresWidgetState extends State<PregadoresWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF6DEEE8),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text(
          'Escala de Pregadores',
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'Lexend Deca',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            child: StreamBuilder<UsersRecord>(
              stream: UsersRecord.getDocument(currentUserReference),
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
                final iconUsersRecord = snapshot.data;
                return InkWell(
                  onTap: () async {
                    if ((iconUsersRecord.adm) == (true)) {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddPregadoresWidget(),
                        ),
                      );
                    }
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Atenção !!!'),
                          content: Text(
                              'Você não tem permissão para acessar essa tela!'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.black,
                    size: 40,
                  ),
                );
              },
            ),
          )
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: StreamBuilder<List<EscalaPregadoresRecord>>(
          stream: queryEscalaPregadoresRecord(
            queryBuilder: (escalaPregadoresRecord) =>
                escalaPregadoresRecord.orderBy('data'),
          ),
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
            List<EscalaPregadoresRecord> columnEscalaPregadoresRecordList =
                snapshot.data;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: List.generate(columnEscalaPregadoresRecordList.length,
                    (columnIndex) {
                  final columnEscalaPregadoresRecord =
                      columnEscalaPregadoresRecordList[columnIndex];
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: DetalhesPregadoresWidget(
                                    nome: columnEscalaPregadoresRecord
                                        .nomePregador,
                                    data: columnEscalaPregadoresRecord.data,
                                    img: columnEscalaPregadoresRecord
                                        .imgPregador,
                                    whats:
                                        columnEscalaPregadoresRecord.whatsapp,
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.99, -0.33),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 5),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          columnEscalaPregadoresRecord
                                              .imgPregador,
                                          'http://simpleicon.com/wp-content/uploads/user1.png',
                                        ),
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.91, 1.06),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        110, 60, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.2, -0.9),
                                          child: AutoSizeText(
                                            'Igreja: ',
                                            style: FlutterFlowTheme.subtitle1
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF020E26),
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ),
                                        AutoSizeText(
                                          columnEscalaPregadoresRecord.igreja
                                              .maybeHandleOverflow(
                                            maxChars: 30,
                                            replacement: '…',
                                          ),
                                          style: FlutterFlowTheme.subtitle1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF020E26),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.99, -0.32),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        110, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        AutoSizeText(
                                          columnEscalaPregadoresRecord
                                              .nomePregador
                                              .maybeHandleOverflow(
                                            maxChars: 13,
                                            replacement: '…',
                                          ),
                                          style: FlutterFlowTheme.subtitle1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF195754),
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.99, -0.32),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        110, 35, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.2, -0.9),
                                          child: Text(
                                            'Data: ',
                                            style: FlutterFlowTheme.subtitle1
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF520606),
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          dateTimeFormat(
                                              'd/M/y',
                                              columnEscalaPregadoresRecord
                                                  .data),
                                          style: FlutterFlowTheme.subtitle1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF520606),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.95, -0.91),
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
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      final textUsersRecord = snapshot.data;
                                      return InkWell(
                                        onLongPress: () async {
                                          if ((textUsersRecord.adm) == (true)) {
                                            await columnEscalaPregadoresRecord
                                                .reference
                                                .delete();
                                          }
                                        },
                                        child: Text(
                                          columnIndex.toString(),
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            fontSize: 20,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}
