import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/l10n/app_localizations.dart';
import 'shopping_home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    final localizations = AppLocalizations.of(context)!;
    if (value == null || value.isEmpty || !value.contains('@')) {
      return localizations.pleaseEnterValidEmail;
    }
    return null;
  }

  String? _validatePassword(String? value) {
    final localizations = AppLocalizations.of(context)!;
    if (value == null || value.length < 6) {
      return localizations.passwordTooShort;
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final localizations = AppLocalizations.of(context)!;
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              localizations.accountSignInSuccess,
              style: const TextStyle(fontFamily: 'Suwannaphum'),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const ShoppingHomeScreen(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                      transitionDuration: const Duration(milliseconds: 800),
                    ),
                  );
                },
                child: Text(
                  localizations.close,
                  style: const TextStyle(fontFamily: 'Suwannaphum'),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          localizations.signIn,
          style: const TextStyle(
            fontFamily: 'Suwannaphum',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                localizations.signInToAccount,
                style: const TextStyle(
                  fontFamily: 'Suwannaphum',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 30),
              
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: localizations.email,
                  labelStyle: const TextStyle(fontFamily: 'Suwannaphum'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.email),
                ),
                validator: _validateEmail,
              ),
              const SizedBox(height: 20),
              
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: localizations.password,
                  labelStyle: const TextStyle(fontFamily: 'Suwannaphum'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                ),
                validator: _validatePassword,
              ),
              const SizedBox(height: 30),
              
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    localizations.signInToAccount,
                    style: const TextStyle(
                      fontFamily: 'Suwannaphum',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
