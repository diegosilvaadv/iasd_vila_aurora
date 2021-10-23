import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../chat_user/chat_user_widget.dart';
import '../components/view_foto_perfil_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../post_details/post_details_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewProfilePageOtherWidget extends StatefulWidget {
  ViewProfilePageOtherWidget({
    Key key,
    this.userDetails,
  }) : super(key: key);

  final UsersRecord userDetails;

  @override
  _ViewProfilePageOtherWidgetState createState() =>
      _ViewProfilePageOtherWidgetState();
}

class _ViewProfilePageOtherWidgetState
    extends State<ViewProfilePageOtherWidget> {
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(widget.userDetails.reference),
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
        final viewProfilePageOtherUsersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 46,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 24,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Meu Perfil',
              textAlign: TextAlign.justify,
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.tertiaryColor,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xFFF49F04),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          viewProfilePageOtherUsersRecord
                                              .displayName,
                                          textAlign: TextAlign.start,
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.black,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1, 0),
                                          child: Text(
                                            viewProfilePageOtherUsersRecord
                                                .email,
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 0, 0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                viewProfilePageOtherUsersRecord
                                                    .igreja,
                                                'Igreja Adventista do Sétimo dia',
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF323232),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.85, 0.68),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 16, 0),
                                      child: Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(90),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.85, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4, 4, 4, 4),
                                            child: InkWell(
                                              onTap: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return Container(
                                                      height: 600,
                                                      child:
                                                          ViewFotoPerfilWidget(
                                                        perfilimg:
                                                            viewProfilePageOtherUsersRecord
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
                                                    viewProfilePageOtherUsersRecord
                                                        .photoUrl,
                                                    'http://simpleicon.com/wp-content/uploads/user1.png',
                                                  ),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24, 12, 24, 12),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        setState(() => _loadingButton = true);
                                        try {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ChatUserWidget(
                                                chatUser:
                                                    viewProfilePageOtherUsersRecord,
                                              ),
                                            ),
                                          );
                                        } finally {
                                          setState(
                                              () => _loadingButton = false);
                                        }
                                      },
                                      text: 'Enviar Mensagem',
                                      options: FFButtonOptions(
                                        width: 270,
                                        height: 40,
                                        color: FlutterFlowTheme.primaryColor,
                                        textStyle:
                                            FlutterFlowTheme.subtitle2.override(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 30,
                                      ),
                                      loading: _loadingButton,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                StreamBuilder<List<UserPostsRecord>>(
                  stream: queryUserPostsRecord(
                    queryBuilder: (userPostsRecord) => userPostsRecord
                        .where('postUser', isEqualTo: currentUserReference)
                        .orderBy('timePosted', descending: true),
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
                    List<UserPostsRecord> socialFeedUserPostsRecordList =
                        snapshot.data;
                    if (socialFeedUserPostsRecordList.isEmpty) {
                      return Center(
                        child: Image.asset(
                          'assets/images/emptyPosts@2x.png',
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 400,
                        ),
                      );
                    }
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children:
                            List.generate(socialFeedUserPostsRecordList.length,
                                (socialFeedIndex) {
                          final socialFeedUserPostsRecord =
                              socialFeedUserPostsRecordList[socialFeedIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 8),
                            child: StreamBuilder<UsersRecord>(
                              stream: UsersRecord.getDocument(
                                  viewProfilePageOtherUsersRecord.reference),
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
                                final userPostUsersRecord = snapshot.data;
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.tertiaryColor,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/Logo_PORTUGUES.png',
                                      ).image,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x32000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PostDetailsWidget(
                                            userRecord: userPostUsersRecord,
                                            postReference:
                                                socialFeedUserPostsRecord
                                                    .reference,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 2, 4),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(8, 0, 0, 0),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: Color(0xFF4B39EF),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                1, 1, 1, 1),
                                                    child: Container(
                                                      width: 40,
                                                      height: 40,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          userPostUsersRecord
                                                              .photoUrl,
                                                          'http://simpleicon.com/wp-content/uploads/user1.png',
                                                        ),
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 0, 0, 0),
                                                      child: Text(
                                                        valueOrDefault<String>(
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
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ),
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30,
                                                      buttonSize: 46,
                                                      icon: Icon(
                                                        Icons.keyboard_control,
                                                        color:
                                                            Color(0xFF262D34),
                                                        size: 20,
                                                      ),
                                                      onPressed: () {
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
                                              BorderRadius.circular(0),
                                          child: CachedNetworkImage(
                                            imageUrl: valueOrDefault<String>(
                                              userPostUsersRecord.photoUrl,
                                              'https://d.newsweek.com/en/full/1310267/best-hawaii-beaches.jpg',
                                            ),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 300,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 4, 8, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 16, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        ToggleIcon(
                                                          onPressed: () async {
                                                            final likesElement =
                                                                currentUserReference;
                                                            final likesUpdate =
                                                                socialFeedUserPostsRecord
                                                                        .likes
                                                                        .contains(
                                                                            likesElement)
                                                                    ? FieldValue
                                                                        .arrayRemove([
                                                                        likesElement
                                                                      ])
                                                                    : FieldValue
                                                                        .arrayUnion([
                                                                        likesElement
                                                                      ]);
                                                            final userPostsUpdateData =
                                                                {
                                                              'likes':
                                                                  likesUpdate,
                                                            };
                                                            await socialFeedUserPostsRecord
                                                                .reference
                                                                .update(
                                                                    userPostsUpdateData);
                                                          },
                                                          value: socialFeedUserPostsRecord
                                                              .likes
                                                              .contains(
                                                                  currentUserReference),
                                                          onIcon: Icon(
                                                            Icons
                                                                .favorite_rounded,
                                                            color: Color(
                                                                0xFF4B39EF),
                                                            size: 25,
                                                          ),
                                                          offIcon: Icon(
                                                            Icons
                                                                .favorite_border,
                                                            color: Color(
                                                                0xFF95A1AC),
                                                            size: 25,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(4,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              functions
                                                                  .likes(
                                                                      socialFeedUserPostsRecord)
                                                                  .toString()
                                                                  .toString(),
                                                              '0',
                                                            ),
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color: Color(
                                                                  0xFF8B97A2),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .mode_comment_outlined,
                                                        color:
                                                            Color(0xFF95A1AC),
                                                        size: 24,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4, 0, 0, 0),
                                                        child: Text(
                                                          socialFeedUserPostsRecord
                                                              .numComments
                                                              .toString(),
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText2
                                                                  .override(
                                                            fontFamily:
                                                                'Lexend Deca',
                                                            color: Color(
                                                                0xFF8B97A2),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 2, 8, 0),
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
                                                    Icons.ios_share,
                                                    color: Color(0xFF95A1AC),
                                                    size: 24,
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2, 4, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 12, 12),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      socialFeedUserPostsRecord
                                                          .postDescription,
                                                      'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
                                                    ),
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF090F13),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
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
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
