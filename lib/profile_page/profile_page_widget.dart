import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/view_foto_perfil_widget.dart';
import '../edit_settings/edit_settings_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../post_details/post_details_widget.dart';
import '../view_profile_page_other/view_profile_page_other_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePageWidget extends StatefulWidget {
  ProfilePageWidget({Key key}) : super(key: key);

  @override
  _ProfilePageWidgetState createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget>
    with TickerProviderStateMixin {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 1210,
      delay: 420,
      fadeIn: true,
    ),
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
    'tabBarOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 1210,
      delay: 600,
      fadeIn: true,
    ),
  };

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
    return StreamBuilder<UsersRecord>(
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
        final profilePageUsersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.background,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        profilePageUsersRecord.displayName,
                                        'UserName',
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.title3.override(
                                        fontFamily: 'Lexend Deca',
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(-1, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Text(
                                          profilePageUsersRecord.email,
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFFEE8B60),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(-1, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                        child: Text(
                                          profilePageUsersRecord.igreja,
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.85, 0.68),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.primaryColor,
                                    borderRadius: BorderRadius.circular(90),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.85, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 4, 4, 4),
                                      child: InkWell(
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            context: context,
                                            builder: (context) {
                                              return Container(
                                                height: 600,
                                                child: ViewFotoPerfilWidget(
                                                  perfilimg:
                                                      profilePageUsersRecord
                                                          .photoUrl,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Container(
                                          width: 90,
                                          height: 90,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              profilePageUsersRecord.photoUrl,
                                              'https://cdn-icons-png.flaticon.com/512/149/149071.png',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ).animated([animationsMap['rowOnPageLoadAnimation']]),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          setState(() => _loadingButton1 = true);
                          try {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 250),
                                reverseDuration: Duration(milliseconds: 250),
                                child: NavBarPage(initialPage: 'homePage'),
                              ),
                            );
                          } finally {
                            setState(() => _loadingButton1 = false);
                          }
                        },
                        text: 'Criar Post',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.primaryColor,
                          textStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.tertiaryColor,
                          ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.primaryColor,
                            width: 2,
                          ),
                          borderRadius: 12,
                        ),
                        loading: _loadingButton1,
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          setState(() => _loadingButton2 = true);
                          try {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 250),
                                reverseDuration: Duration(milliseconds: 250),
                                child: EditSettingsWidget(),
                              ),
                            );
                          } finally {
                            setState(() => _loadingButton2 = false);
                          }
                        },
                        text: 'Settings',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.tertiaryColor,
                          textStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                          ),
                          elevation: 0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.gray200,
                            width: 2,
                          ),
                          borderRadius: 12,
                        ),
                        loading: _loadingButton2,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: FlutterFlowTheme.primaryColor,
                          unselectedLabelColor: FlutterFlowTheme.grayIcon,
                          labelStyle: GoogleFonts.getFont(
                            'Roboto',
                          ),
                          indicatorColor: FlutterFlowTheme.primaryColor,
                          indicatorWeight: 2,
                          tabs: [
                            Tab(
                              text: 'Membros da Igreja',
                            ),
                            Tab(
                              text: 'Postagens',
                            )
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              StreamBuilder<List<UsersRecord>>(
                                stream: queryUsersRecord(
                                  queryBuilder: (usersRecord) =>
                                      usersRecord.orderBy('display_name'),
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
                                  List<UsersRecord> columnUsersRecordList =
                                      snapshot.data;
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          columnUsersRecordList.length,
                                          (columnIndex) {
                                        final columnUsersRecord =
                                            columnUsersRecordList[columnIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 10),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ViewProfilePageOtherWidget(
                                                    userDetails:
                                                        columnUsersRecord,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF252525),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        5,
                                                                        0,
                                                                        5),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnUsersRecord
                                                                      .photoUrl,
                                                                  'http://simpleicon.com/wp-content/uploads/user1.png',
                                                                ),
                                                                width: 100,
                                                                height: 100,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  columnUsersRecord
                                                                      .displayName,
                                                                  style: FlutterFlowTheme
                                                                      .title1
                                                                      .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                                child: StreamBuilder<List<UserPostsRecord>>(
                                  stream: queryUserPostsRecord(
                                    queryBuilder: (userPostsRecord) =>
                                        userPostsRecord
                                            .where('postUser',
                                                isEqualTo:
                                                    profilePageUsersRecord
                                                        .reference)
                                            .orderBy('timePosted',
                                                descending: true),
                                  ),
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
                                    List<UserPostsRecord>
                                        socialFeedUserPostsRecordList =
                                        snapshot.data;
                                    if (socialFeedUserPostsRecordList.isEmpty) {
                                      return Center(
                                        child: Image.asset(
                                          'assets/images/emptyPosts@2x.png',
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.5,
                                          height: 400,
                                        ),
                                      );
                                    }
                                    return SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            socialFeedUserPostsRecordList
                                                .length, (socialFeedIndex) {
                                          final socialFeedUserPostsRecord =
                                              socialFeedUserPostsRecordList[
                                                  socialFeedIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 8),
                                            child: StreamBuilder<UsersRecord>(
                                              stream: UsersRecord.getDocument(
                                                  socialFeedUserPostsRecord
                                                      .postUser),
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
                                                final userPostUsersRecord =
                                                    snapshot.data;
                                                return Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme
                                                        .tertiaryColor,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x32000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0),
                                                  ),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              PostDetailsWidget(
                                                            userRecord:
                                                                userPostUsersRecord,
                                                            postReference:
                                                                socialFeedUserPostsRecord
                                                                    .reference,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      8, 2, 4),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: Color(
                                                                      0xFF4B39EF),
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            1,
                                                                            1,
                                                                            1,
                                                                            1),
                                                                    child:
                                                                        Container(
                                                                      width: 40,
                                                                      height:
                                                                          40,
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          userPostUsersRecord
                                                                              .photoUrl,
                                                                          'https://cdn-icons-png.flaticon.com/512/149/149071.png',
                                                                        ),
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              12,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          userPostUsersRecord
                                                                              .userName,
                                                                          'myUsername',
                                                                        ),
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              Color(0xFF090F13),
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30,
                                                                      buttonSize:
                                                                          46,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_control,
                                                                        color: Color(
                                                                            0xFF262D34),
                                                                        size:
                                                                            20,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(0),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl:
                                                                valueOrDefault<
                                                                    String>(
                                                              socialFeedUserPostsRecord
                                                                  .postPhoto,
                                                              'https://d.newsweek.com/en/full/1310267/best-hawaii-beaches.jpg',
                                                            ),
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            height: 300,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(8,
                                                                      4, 8, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            16,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ToggleIcon(
                                                                          onPressed:
                                                                              () async {
                                                                            final likesElement =
                                                                                profilePageUsersRecord.reference;
                                                                            final likesUpdate = socialFeedUserPostsRecord.likes.contains(likesElement)
                                                                                ? FieldValue.arrayRemove([
                                                                                    likesElement
                                                                                  ])
                                                                                : FieldValue.arrayUnion([
                                                                                    likesElement
                                                                                  ]);
                                                                            final userPostsUpdateData =
                                                                                {
                                                                              'likes': likesUpdate,
                                                                            };
                                                                            await socialFeedUserPostsRecord.reference.update(userPostsUpdateData);
                                                                          },
                                                                          value: socialFeedUserPostsRecord
                                                                              .likes
                                                                              .contains(profilePageUsersRecord.reference),
                                                                          onIcon:
                                                                              Icon(
                                                                            Icons.favorite_rounded,
                                                                            color:
                                                                                Color(0xFF4B39EF),
                                                                            size:
                                                                                25,
                                                                          ),
                                                                          offIcon:
                                                                              Icon(
                                                                            Icons.favorite_border,
                                                                            color:
                                                                                Color(0xFF95A1AC),
                                                                            size:
                                                                                25,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              functions.likes(socialFeedUserPostsRecord).toString().toString(),
                                                                              '0',
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.bodyText2.override(
                                                                              fontFamily: 'Lexend Deca',
                                                                              color: Color(0xFF8B97A2),
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .mode_comment_outlined,
                                                                        color: Color(
                                                                            0xFF95A1AC),
                                                                        size:
                                                                            24,
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          socialFeedUserPostsRecord
                                                                              .numComments
                                                                              .toString(),
                                                                          style: FlutterFlowTheme
                                                                              .bodyText2
                                                                              .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                Color(0xFF8B97A2),
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            8,
                                                                            0),
                                                                    child: Text(
                                                                      dateTimeFormat(
                                                                          'relative',
                                                                          socialFeedUserPostsRecord
                                                                              .timePosted),
                                                                      style: FlutterFlowTheme
                                                                          .bodyText1
                                                                          .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .ios_share,
                                                                    color: Color(
                                                                        0xFF95A1AC),
                                                                    size: 24,
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      4, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12,
                                                                          0,
                                                                          12,
                                                                          12),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      socialFeedUserPostsRecord
                                                                          .postDescription,
                                                                      'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
                                                                    ),
                                                                    style: FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: Color(
                                                                          0xFF090F13),
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ).animated([animationsMap['tabBarOnPageLoadAnimation']]),
                )
              ],
            ).animated([animationsMap['columnOnPageLoadAnimation']]),
          ),
        );
      },
    );
  }
}
