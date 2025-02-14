
import 'package:get/get.dart';

class LanguageChange extends Translations{
  @override
   Map<String , Map<String, String>> get keys => {
    'en': {
      'title': 'Welcome to Flutter World',
      'dec' : 'My name is Shaharyar Ali, I am working on Flutter',
    },
    'ur': {
      'title': 'فلٹر ورلڈ میں خوش آمدید',
      'dec' : 'میرا نام شہریار علی ہے، میں فلٹر پر کام کر رہا ہوں۔',
    },
  };
}