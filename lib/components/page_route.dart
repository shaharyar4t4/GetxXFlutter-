import 'package:get/get.dart';
import 'package:leangetx/veiw/veiw_about.dart';
import 'package:leangetx/veiw/view_contact.dart';
import 'package:leangetx/veiw/view_home.dart';

import '../veiw/view_conter.dart';

var allPage = [
  GetPage(name: '/', page: () => ViewHome(),
  transition: Transition.cupertino,
  ),
  GetPage(name: '/about', page: () => VeiwAbout(),
    transition: Transition.cupertino,
  ),
  GetPage(name: '/contact', page: () => VeiwContact(),
    transition: Transition.cupertino,
  ),
  GetPage(name: '/counter', page: () => ViewConter(),
    transition: Transition.cupertino,
  ),
];
