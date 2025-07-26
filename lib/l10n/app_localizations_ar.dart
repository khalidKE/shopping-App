// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'تطبيق التسوق';

  @override
  String get welcomeTitle => 'مرحباً بك في متجرنا';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get fullName => 'الاسم الكامل';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get createAccount => 'إنشاء حساب';

  @override
  String get signInToAccount => 'تسجيل الدخول';

  @override
  String get accountCreatedSuccess => 'تم إنشاء الحساب بنجاح';

  @override
  String get accountSignInSuccess => 'تم تسجيل الدخول بنجاح';

  @override
  String get close => 'إغلاق';

  @override
  String get ourProducts => 'منتجاتنا';

  @override
  String get hotOffers => 'العروض الساخنة';

  @override
  String get addToCart => 'أضف للسلة';

  @override
  String get itemAddedToCart => 'تم إضافة العنصر للسلة';

  @override
  String get pleaseEnterValidName => 'يرجى إدخال اسم صحيح (الحرف الأول كبير)';

  @override
  String get pleaseEnterValidEmail => 'يرجى إدخال بريد إلكتروني صحيح';

  @override
  String get passwordTooShort => 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';

  @override
  String get passwordsDoNotMatch => 'كلمات المرور غير متطابقة';
}
