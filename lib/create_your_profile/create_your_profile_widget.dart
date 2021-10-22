import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateYourProfileWidget extends StatefulWidget {
  CreateYourProfileWidget({Key key}) : super(key: key);

  @override
  _CreateYourProfileWidgetState createState() =>
      _CreateYourProfileWidgetState();
}

class _CreateYourProfileWidgetState extends State<CreateYourProfileWidget> {
  String uploadedFileUrl = '';
  TextEditingController yourNameController;
  TextEditingController userNameController;
  TextEditingController bioController;
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    bioController = TextEditingController();
    userNameController = TextEditingController(text: '@');
    yourNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF30243E),
        automaticallyImplyLeading: false,
        title: Text(
          'Seu Perfil ;)',
          style: FlutterFlowTheme.title2.override(
            fontFamily: 'Lexend Deca',
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 24, 0),
            child: Text(
              '2/2',
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 24, 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              'Preencha o seu perfil agora para concluir as configurações.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                    child: InkWell(
                      onTap: () async {
                        final selectedMedia =
                            await selectMediaWithSourceBottomSheet(
                          context: context,
                          allowPhoto: true,
                          backgroundColor: FlutterFlowTheme.tertiaryColor,
                          textColor: Colors.black,
                          pickerFontFamily: 'Lexend Deca',
                        );
                        if (selectedMedia != null &&
                            validateFileFormat(
                                selectedMedia.storagePath, context)) {
                          showUploadMessage(context, 'Uploading file...',
                              showLoading: true);
                          final downloadUrl = await uploadData(
                              selectedMedia.storagePath, selectedMedia.bytes);
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          if (downloadUrl != null) {
                            setState(() => uploadedFileUrl = downloadUrl);
                            showUploadMessage(context, 'Success!');
                          } else {
                            showUploadMessage(
                                context, 'Failed to upload media');
                            return;
                          }
                        }
                      },
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.primaryColor,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/addUser@2x.png',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF0097A7),
                            )
                          ],
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFF30243E),
                          ),
                        ),
                        child: Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            uploadedFileUrl,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextFormField(
                            onChanged: (_) => setState(() {}),
                            controller: yourNameController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: ' Nome & Sobrenome',
                              labelStyle: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.secondaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.secondaryColor,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.secondaryColor,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              filled: true,
                              fillColor: Colors.black,
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                              suffixIcon: yourNameController.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () => setState(
                                        () => yourNameController.clear(),
                                      ),
                                      child: Icon(
                                        Icons.clear,
                                        color: Color(0xFFFB0D0D),
                                        size: 20,
                                      ),
                                    )
                                  : null,
                            ),
                            style: FlutterFlowTheme.title3.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFFE1E1E1),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: TextFormField(
                              controller: userNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Nome de Usuário',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.secondaryColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.secondaryColor,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.secondaryColor,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                filled: true,
                                fillColor: Colors.black,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                              ),
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: TextFormField(
                              controller: bioController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Sua Igreja',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.secondaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.secondaryColor,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.secondaryColor,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.black,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(3, 8, 0, 0),
                              ),
                              style: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                      child: FFButtonWidget(
                        onPressed: () async {
                          setState(() => _loadingButton = true);
                          try {
                            final usersUpdateData = createUsersRecordData(
                              displayName: yourNameController.text,
                              userName: userNameController.text,
                              photoUrl: uploadedFileUrl,
                              igreja: bioController.text,
                              adm: false,
                            );
                            await currentUserReference.update(usersUpdateData);
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    NavBarPage(initialPage: 'PagIncial'),
                              ),
                              (r) => false,
                            );
                          } finally {
                            setState(() => _loadingButton = false);
                          }
                        },
                        text: 'Completar Perfil ;)',
                        options: FFButtonOptions(
                          width: 230,
                          height: 50,
                          color: Colors.black,
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.white,
                          ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 40,
                        ),
                        loading: _loadingButton,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
