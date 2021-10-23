import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/addanuncios_widget.dart';
import '../detalhes_events/detalhes_events_widget.dart';
import '../escola_sabatina/escola_sabatina_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../limpeza/limpeza_widget.dart';
import '../list_ensaiomusical/list_ensaiomusical_widget.dart';
import '../main.dart';
import '../min_musical/min_musical_widget.dart';
import '../pregadores/pregadores_widget.dart';
import '../sonoplastia/sonoplastia_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PagIncialWidget extends StatefulWidget {
  PagIncialWidget({Key key}) : super(key: key);

  @override
  _PagIncialWidgetState createState() => _PagIncialWidgetState();
}

class _PagIncialWidgetState extends State<PagIncialWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'stackOnPageLoadAnimation1': AnimationInfo(
      curve: Curves.easeIn,
      trigger: AnimationTrigger.onPageLoad,
      duration: 1170,
      fadeIn: true,
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      curve: Curves.elasticOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
    'stackOnPageLoadAnimation2': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
    'stackOnPageLoadAnimation3': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
    'stackOnPageLoadAnimation4': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
    'stackOnPageLoadAnimation5': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
    'stackOnPageLoadAnimation6': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
    'stackOnPageLoadAnimation7': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
    'iconOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1E2429),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.none,
                                    image: Image.asset(
                                      'assets/images/d570dec61a57c08d92a194e515f1b247.jpg',
                                    ).image,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Colors.transparent,
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                child: Container(
                                  width: 100,
                                  height: 150,
                                  constraints: BoxConstraints(
                                    maxHeight: 200,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/d570dec61a57c08d92a194e515f1b247.jpg',
                                      ).image,
                                    ),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF1E2429),
                                        Color(0x00111417)
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16),
                                      bottomRight: Radius.circular(16),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0),
                                    ),
                                  ),
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
                                            child: SpinKitDoubleBounce(
                                              color: Color(0xFFF49F04),
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      final stackUsersRecord = snapshot.data;
                                      return Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.91, -0.69),
                                            child: Container(
                                              width: 110,
                                              height: 110,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEEEEEE),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                border: Border.all(
                                                  color: Color(0xFF30243E),
                                                  width: 5,
                                                ),
                                              ),
                                              child: InkWell(
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          NavBarPage(
                                                              initialPage:
                                                                  'profilePage'),
                                                    ),
                                                  );
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      stackUsersRecord.photoUrl,
                                                      'http://simpleicon.com/wp-content/uploads/user1.png',
                                                    ),
                                                    width: 80,
                                                    height: 80,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ).animated([
                                                animationsMap[
                                                    'imageOnPageLoadAnimation']
                                              ]),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.06, -0.86),
                                            child: Text(
                                              'Olá ;)',
                                              style: FlutterFlowTheme.title1
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 35,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.09, 0.91),
                                            child: Text(
                                              'Seja bem vindo(a) ao app\nda IASD do Vila Aurora',
                                              textAlign: TextAlign.end,
                                              style: FlutterFlowTheme.subtitle1
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.11, -0.29),
                                            child: InkWell(
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        NavBarPage(
                                                            initialPage:
                                                                'profilePage'),
                                                  ),
                                                );
                                              },
                                              child: AutoSizeText(
                                                stackUsersRecord.displayName,
                                                style: FlutterFlowTheme
                                                    .subtitle1
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.63, 0.96),
                                            child: Text(
                                              '|',
                                              style: FlutterFlowTheme.title1
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFFF49F04),
                                                fontSize: 40,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.92, 0.99),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              child: Image.asset(
                                                'assets/images/Vila_Auroral.png',
                                                width: 50,
                                                height: 50,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )
                                        ],
                                      ).animated([
                                        animationsMap[
                                            'stackOnPageLoadAnimation1']
                                      ]);
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                              child: Text(
                                'Acesso Rápido',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFFDBDBDB),
                                  fontSize: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: GridView(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 1,
                                  ),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 300),
                                            reverseDuration:
                                                Duration(milliseconds: 300),
                                            child: SonoplastiaWidget(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF0B8DA3),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.04, -0.66),
                                              child: Icon(
                                                Icons.graphic_eq,
                                                color: Colors.white,
                                                size: 80,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.1, 0.8),
                                              child: Text(
                                                'Sonoplastia',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ],
                                        ).animated([
                                          animationsMap[
                                              'stackOnPageLoadAnimation2']
                                        ]),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFAA211),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.scale,
                                              alignment: Alignment.bottomCenter,
                                              duration:
                                                  Duration(milliseconds: 300),
                                              reverseDuration:
                                                  Duration(milliseconds: 300),
                                              child: MinMusicalWidget(),
                                            ),
                                          );
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.04, -0.66),
                                              child: Icon(
                                                Icons.library_music,
                                                color: Colors.white,
                                                size: 80,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.1, 0.8),
                                              child: Text(
                                                'Mini. Musical',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ).animated([
                                        animationsMap[
                                            'stackOnPageLoadAnimation3']
                                      ]),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF6DEEE8),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PregadoresWidget(),
                                            ),
                                          );
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.04, -0.66),
                                              child: Icon(
                                                Icons.people,
                                                color: Colors.black,
                                                size: 80,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.1, 0.8),
                                              child: Text(
                                                'Pregadores',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.black,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ).animated([
                                        animationsMap[
                                            'stackOnPageLoadAnimation4']
                                      ]),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF2335C),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ListEnsaiomusicalWidget(),
                                            ),
                                          );
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.1, 0.89),
                                              child: Text(
                                                'Ensaio Musical',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.04, -0.66),
                                              child: FaIcon(
                                                FontAwesomeIcons.microphoneAlt,
                                                color: Colors.white,
                                                size: 80,
                                              ),
                                            )
                                          ],
                                        ),
                                      ).animated([
                                        animationsMap[
                                            'stackOnPageLoadAnimation5']
                                      ]),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF0059B5),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.scale,
                                              alignment: Alignment.bottomCenter,
                                              duration:
                                                  Duration(milliseconds: 300),
                                              reverseDuration:
                                                  Duration(milliseconds: 300),
                                              child: EscolaSabatinaWidget(),
                                            ),
                                          );
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.1, 0.89),
                                              child: Text(
                                                'Escola Sabatina',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.04, -0.66),
                                              child: Icon(
                                                Icons.school_outlined,
                                                color: Colors.white,
                                                size: 80,
                                              ),
                                            )
                                          ],
                                        ),
                                      ).animated([
                                        animationsMap[
                                            'stackOnPageLoadAnimation6']
                                      ]),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF4E0606),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                              reverseDuration:
                                                  Duration(milliseconds: 0),
                                              child: LimpezaWidget(),
                                            ),
                                          );
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.1, 0.89),
                                              child: Text(
                                                'Limpeza',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.04, -0.66),
                                              child: Icon(
                                                Icons
                                                    .cleaning_services_outlined,
                                                color: Colors.white,
                                                size: 80,
                                              ),
                                            )
                                          ],
                                        ),
                                      ).animated([
                                        animationsMap[
                                            'stackOnPageLoadAnimation7']
                                      ]),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Icon(
                                  Icons.warning_rounded,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Text(
                                  'Anúncios Importantes',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFFD5D5D5),
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(90, 0, 0, 0),
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
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            context: context,
                                            builder: (context) {
                                              return Container(
                                                height: 600,
                                                child: AddanunciosWidget(),
                                              );
                                            },
                                          );
                                        }
                                      },
                                      child: Icon(
                                        Icons.add_circle,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ).animated([
                                      animationsMap['iconOnPageLoadAnimation']
                                    ]);
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                    ),
                    child: StreamBuilder<List<AnunciosRecord>>(
                      stream: queryAnunciosRecord(
                        queryBuilder: (anunciosRecord) =>
                            anunciosRecord.orderBy('data'),
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
                        List<AnunciosRecord> columnAnunciosRecordList =
                            snapshot.data;
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                columnAnunciosRecordList.length, (columnIndex) {
                              final columnAnunciosRecord =
                                  columnAnunciosRecordList[columnIndex];
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Color(0xFF353535),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 0, 5),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          valueOrDefault<String>(
                                            columnAnunciosRecord.img,
                                            'https://cdn-icons-png.flaticon.com/512/1458/1458512.png',
                                          ),
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          110, 5, 0, 0),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.13, 0.43),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 5, 0),
                                                child: AutoSizeText(
                                                  columnAnunciosRecord.titulo
                                                      .maybeHandleOverflow(
                                                    maxChars: 25,
                                                    replacement: '…',
                                                  ),
                                                  style: FlutterFlowTheme.title3
                                                      .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          110, 35, 0, 0),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.13, 0.43),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 5, 0),
                                                child: AutoSizeText(
                                                  columnAnunciosRecord.mensagem
                                                      .maybeHandleOverflow(
                                                    maxChars: 20,
                                                    replacement: '…',
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .subtitle1
                                                      .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFFC5C5C5),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          110, 65, 0, 0),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.13, 0.43),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      'd/M/y',
                                                      columnAnunciosRecord
                                                          .data),
                                                  style: FlutterFlowTheme
                                                      .subtitle1
                                                      .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: FlutterFlowTheme
                                                        .secondaryColor,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.13, 0.43),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 5, 0, 0),
                                                child: Text(
                                                  columnAnunciosRecord.horario,
                                                  style: FlutterFlowTheme
                                                      .subtitle1
                                                      .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: FlutterFlowTheme
                                                        .secondaryColor,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.9, -0.04),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 40, 0, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetalhesEventsWidget(
                                                  titulo: columnAnunciosRecord
                                                      .titulo,
                                                  mensagem: columnAnunciosRecord
                                                      .mensagem,
                                                  img: columnAnunciosRecord.img,
                                                  horario: columnAnunciosRecord
                                                      .horario,
                                                  data:
                                                      columnAnunciosRecord.data,
                                                  local: columnAnunciosRecord
                                                      .local,
                                                ),
                                              ),
                                            );
                                          },
                                          child: FaIcon(
                                            FontAwesomeIcons.arrowRight,
                                            color: Color(0xFF3B93A1),
                                            size: 30,
                                          ),
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
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
