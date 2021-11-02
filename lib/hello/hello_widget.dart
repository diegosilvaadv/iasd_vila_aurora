import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HelloWidget extends StatefulWidget {
  HelloWidget({Key key}) : super(key: key);

  @override
  _HelloWidgetState createState() => _HelloWidgetState();
}

class _HelloWidgetState extends State<HelloWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'teste dados',
          style: FlutterFlowTheme.bodyText1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: StreamBuilder<List<HelloRecord>>(
          stream: queryHelloRecord(),
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
            List<HelloRecord> columnHelloRecordList = snapshot.data;
            return Column(
              mainAxisSize: MainAxisSize.max,
              children:
                  List.generate(columnHelloRecordList.length, (columnIndex) {
                final columnHelloRecord = columnHelloRecordList[columnIndex];
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.secondaryColor,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Text(
                        columnHelloRecord.nome,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.title1,
                      ),
                    ),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
