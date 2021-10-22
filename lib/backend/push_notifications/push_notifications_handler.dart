import 'dart:async';
import 'dart:convert';

import '../backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../login/login_widget.dart';
import '../../create_account/create_account_widget.dart';
import '../../create_your_profile/create_your_profile_widget.dart';
import '../../forgot_password/forgot_password_widget.dart';
import '../../create_post/create_post_widget.dart';
import '../../post_details/post_details_widget.dart';
import '../../edit_settings/edit_settings_widget.dart';
import '../../edit_user_profile/edit_user_profile_widget.dart';
import '../../change_password/change_password_widget.dart';
import '../../view_profile_page_other/view_profile_page_other_widget.dart';
import '../../chat_user/chat_user_widget.dart';
import '../../criar_mensagem/criar_mensagem_widget.dart';
import '../../sonoplastia/sonoplastia_widget.dart';
import '../../detalhes_sonoplastia/detalhes_sonoplastia_widget.dart';
import '../../edit_escala_sonoplastia/edit_escala_sonoplastia_widget.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler(
      {Key key, this.handlePushNotification, this.child})
      : super(key: key);

  final Function(BuildContext) handlePushNotification;
  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.black,
          child: Builder(
            builder: (context) => Image.asset(
              'assets/images/Logo_PORTUGUES.png',
              fit: BoxFit.contain,
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'login': (data) async => LoginWidget(),
  'createAccount': (data) async => CreateAccountWidget(),
  'createYourProfile': (data) async => CreateYourProfileWidget(),
  'forgotPassword': (data) async => ForgotPasswordWidget(),
  'homePage': (data) async => NavBarPage(initialPage: 'HomePageWidget'),
  'profilePage': (data) async => NavBarPage(initialPage: 'ProfilePageWidget'),
  'createPost': (data) async => CreatePostWidget(),
  'postDetails': (data) async => PostDetailsWidget(
        postReference: getParameter(data, 'postReference'),
        userRecord: await getDocumentParameter(
            data, 'userRecord', UsersRecord.serializer),
      ),
  'editSettings': (data) async => EditSettingsWidget(),
  'editUserProfile': (data) async => EditUserProfileWidget(),
  'changePassword': (data) async => ChangePasswordWidget(),
  'viewProfilePageOther': (data) async => ViewProfilePageOtherWidget(
        userDetails: await getDocumentParameter(
            data, 'userDetails', UsersRecord.serializer),
      ),
  'chatUser': (data) async => ChatUserWidget(
        chatUser: await getDocumentParameter(
            data, 'chatUser', UsersRecord.serializer),
      ),
  'chatMain': (data) async => NavBarPage(initialPage: 'ChatMainWidget'),
  'criar_mensagem': (data) async => CriarMensagemWidget(),
  'sonoplastia': (data) async => SonoplastiaWidget(),
  'detalhes_sonoplastia': (data) async => DetalhesSonoplastiaWidget(
        nome: getParameter(data, 'nome'),
        data: getParameter(data, 'data'),
        img: getParameter(data, 'img'),
      ),
  'edit_escala_sonoplastia': (data) async => EditEscalaSonoplastiaWidget(
        nome: getParameter(data, 'nome'),
        data: getParameter(data, 'data'),
        img: getParameter(data, 'img'),
      ),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return json.decode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}

T getParameter<T>(Map<String, dynamic> data, String paramName) {
  try {
    if (!data.containsKey(paramName)) {
      return null;
    }
    final param = data[paramName];
    switch (T) {
      case String:
        return param;
      case double:
        return param.toDouble();
      case DateTime:
        return DateTime.fromMillisecondsSinceEpoch(param) as T;
      case LatLng:
        return latLngFromString(param) as T;
    }
    if (param is String) {
      return FirebaseFirestore.instance.doc(param) as T;
    }
    return param;
  } catch (e) {
    print('Error parsing parameter "$paramName": $e');
    return null;
  }
}

Future<T> getDocumentParameter<T>(
    Map<String, dynamic> data, String paramName, Serializer<T> serializer) {
  if (!data.containsKey(paramName)) {
    return null;
  }
  return FirebaseFirestore.instance
      .doc(data[paramName])
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));
}

final latRegex = RegExp(
    r'^(+|-)?(?:90(?:(?:.0{1,7})?)|(?:[0-9]|[1-8][0-9])(?:(?:.[0-9]{1,7})?))$');
final lngRegex = RegExp(
    r'^(+|-)?(?:180(?:(?:.0{1,7})?)|(?:[0-9]|[1-9][0-9]|1[0-7][0-9])(?:(?:.[0-9]{1,7})?))$');

LatLng latLngFromString(String latLngStr) {
  final pieces = latLngStr.split(',');
  if (pieces.length != 2) {
    return null;
  }
  final lat = pieces[0].trim();
  final lng = pieces[1].trim();
  if (!latRegex.hasMatch(lat)) {
    return null;
  }
  if (!lngRegex.hasMatch(lng)) {
    return null;
  }
  return LatLng(double.parse(lat), double.parse(lng));
}
