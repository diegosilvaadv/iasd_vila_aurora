import '../backend/backend.dart';
import '../chat_user/chat_user_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CriarMensagemWidget extends StatefulWidget {
  CriarMensagemWidget({Key key}) : super(key: key);

  @override
  _CriarMensagemWidgetState createState() => _CriarMensagemWidgetState();
}

class _CriarMensagemWidgetState extends State<CriarMensagemWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.arrow_back_outlined,
                                      color: Color(0xFF6DEEE8),
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      'Enviar Mensagem',
                                      style: FlutterFlowTheme.title1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFFFAA211),
                                        fontSize: 28,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    StreamBuilder<List<UsersRecord>>(
                      stream: queryUsersRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: SpinKitThreeBounce(
                                color: FlutterFlowTheme.secondaryColor,
                                size: 50,
                              ),
                            ),
                          );
                        }
                        List<UsersRecord> columnUsersRecordList = snapshot.data;
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                columnUsersRecordList.length, (columnIndex) {
                              final columnUsersRecord =
                                  columnUsersRecordList[columnIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ChatUserWidget(
                                              chatUser: columnUsersRecord,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Color(0xFFC8CED5),
                                            width: 1,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 0, 8, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 80,
                                                    height: 80,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      valueOrDefault<String>(
                                                        columnUsersRecord
                                                            .photoUrl,
                                                        'http://simpleicon.com/wp-content/uploads/user1.png',
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        columnUsersRecord
                                                            .displayName,
                                                        style: FlutterFlowTheme
                                                            .subtitle1
                                                            .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xFF15212B),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.7, 0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                                'd/M h:m a',
                                                                columnUsersRecord
                                                                    .createdTime),
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF57636C),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 4, 0),
                                                          child: Text(
                                                            'Igreja adventista do Sétimo dia \ndo Vila Aurora - Jaraguá - SP',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color: Color(
                                                                  0xFF8B97A2),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
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
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
