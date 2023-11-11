//import 'package:_3rd_course/data/model/user.dart';
//import 'package:_3rd_course/pages/edit_profile_page.dart';
import 'package:_3rd_course/pages/editor_page.dart';
import 'package:_3rd_course/pages/home_page.dart';
import 'package:_3rd_course/pages/login_page.dart';
import 'package:_3rd_course/pages/main_page.dart';
//import 'package:_3rd_course/pages/nearby_page.dart';
//import 'package:_3rd_course/pages/user_page.dart';
//import 'package:_3rd_course/provider/login_provider.dart';
//import 'package:provider/provider.dart';

class AppRoutes {
  static final pages = {
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editProfile: (context) => EditProfilePage(),
    //nearby: (context) => NearbyPage(),
    //user: (context) => UserPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const user = '/user';
}
