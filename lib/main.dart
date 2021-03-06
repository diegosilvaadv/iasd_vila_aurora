import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'auth/firebase_user_provider.dart';
import 'auth/auth_util.dart';

import 'package:iasd7vilaaurora/login/login_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pag_incial/pag_incial_widget.dart';
import 'chat_main/chat_main_widget.dart';
import 'home_page/home_page_widget.dart';
import 'profile_page/profile_page_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Stream<Iasd7vilaauroraFirebaseUser> userStream;
  Iasd7vilaauroraFirebaseUser initialUser;
  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    userStream = iasd7vilaauroraFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iasd7vilaaurora',
      localizationsDelegates: [
      
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(primarySwatch: Colors.blue),
      home: initialUser == null
          ? Container(
              color: Colors.black,
              child: Builder(
                builder: (context) => Image.asset(
                  'assets/images/Logo_PORTUGUES.png',
                  fit: BoxFit.contain,
                ),
              ),
            )
          : currentUser.loggedIn
              ? NavBarPage()
              : LoginWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'PagIncial';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'PagIncial': PagIncialWidget(),
      'chatMain': ChatMainWidget(),
      'homePage': HomePageWidget(),
      'profilePage': ProfilePageWidget(),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24,
            ),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.chat_bubble_outlined,
              size: 24,
            ),
            label: 'Messages',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.comments,
              size: 24,
            ),
            label: 'Social',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.account_circle,
              size: 24,
            ),
            label: 'Profile',
            tooltip: '',
          )
        ],
        backgroundColor: Color(0xFF590C44),
        currentIndex: tabs.keys.toList().indexOf(_currentPage),
        selectedItemColor: Color(0xFFF39E03),
        unselectedItemColor: Colors.white,
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
