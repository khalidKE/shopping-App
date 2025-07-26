// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Shopping App';

  @override
  String get welcomeTitle => 'Welcome to Our Store';

  @override
  String get signUp => 'Sign Up';

  @override
  String get signIn => 'Sign In';

  @override
  String get fullName => 'Full Name';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get createAccount => 'Create Account';

  @override
  String get signInToAccount => 'Sign In to Account';

  @override
  String get accountCreatedSuccess => 'Account created successfully';

  @override
  String get accountSignInSuccess => 'Account sign-in successfully';

  @override
  String get close => 'Close';

  @override
  String get ourProducts => 'Our Products';

  @override
  String get hotOffers => 'Hot Offers';

  @override
  String get addToCart => 'Add to Cart';

  @override
  String get itemAddedToCart => 'Item added to the cart';

  @override
  String get pleaseEnterValidName =>
      'Please enter a valid name (first letter uppercase)';

  @override
  String get pleaseEnterValidEmail => 'Please enter a valid email';

  @override
  String get passwordTooShort => 'Password must be at least 6 characters';

  @override
  String get passwordsDoNotMatch => 'Passwords do not match';
}
