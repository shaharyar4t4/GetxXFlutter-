import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leangetx/components/page_route.dart';
import 'package:leangetx/veiw/veiw_LanguageChanger.dart';
import 'package:leangetx/veiw/view_home.dart';

import 'components/language_change.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
      translations: LanguageChange(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light( primary: Colors.deepPurple),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
       // below is the code for the page route
       getPages: allPage,

      home: ViewHome(),
    );
  }
}


