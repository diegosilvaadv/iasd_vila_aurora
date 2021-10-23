import '../add_musical/add_musical_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MinMusicalWidget extends StatefulWidget {
  MinMusicalWidget({Key key}) : super(key: key);

  @override
  _MinMusicalWidgetState createState() => _MinMusicalWidgetState();
}

class _MinMusicalWidgetState extends State<MinMusicalWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFAA211),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text(
          'Ministério Musical',
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
                      child: SpinKitDoubleBounce(
                        color: Color(0xFFF49F04),
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
                          builder: (context) => AddMusicalWidget(),
                        ),
                      );
                    }
                  },
                  child: Icon(
                    Icons.add_circle_sharp,
                    color: FlutterFlowTheme.primaryColor,
                    size: 30,
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
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
          child: StreamBuilder<List<MiniMusicalRecord>>(
            stream: queryMiniMusicalRecord(
              queryBuilder: (miniMusicalRecord) =>
                  miniMusicalRecord.orderBy('data'),
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
              List<MiniMusicalRecord> columnMiniMusicalRecordList =
                  snapshot.data;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(columnMiniMusicalRecordList.length,
                      (columnIndex) {
                    final columnMiniMusicalRecord =
                        columnMiniMusicalRecordList[columnIndex];
                    return Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Color(0xFF04B8F4),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 8, 8, 8),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            'data:image/png;base64,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',
                                            width: 74,
                                            height: 74,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 1, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child:
                                                    StreamBuilder<UsersRecord>(
                                                  stream:
                                                      UsersRecord.getDocument(
                                                          currentUserReference),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              SpinKitDoubleBounce(
                                                            color: Color(
                                                                0xFFF49F04),
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final textUsersRecord =
                                                        snapshot.data;
                                                    return InkWell(
                                                      onLongPress: () async {
                                                        await columnMiniMusicalRecord
                                                            .reference
                                                            .delete();
                                                      },
                                                      child: Text(
                                                        columnIndex.toString(),
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xFF545454),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Text(
                                                columnMiniMusicalRecord.cantor,
                                                style: FlutterFlowTheme
                                                    .subtitle1
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme
                                                      .primaryColor,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Data: ',
                                                style: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme
                                                      .primaryColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              Text(
                                                dateTimeFormat(
                                                    'd/M/y',
                                                    columnMiniMusicalRecord
                                                        .data),
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF050635),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Igreja: ',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  columnMiniMusicalRecord
                                                      .igreja,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Text(
                                                    '| Contato: ',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  columnMiniMusicalRecord
                                                      .contato,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
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
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
