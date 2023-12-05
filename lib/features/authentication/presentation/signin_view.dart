import 'package:firebase_ui_auth/firebase_ui_auth.dart' hide ForgotPasswordView;
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../home/presentation/home.dart';
import 'decorations.dart';
import 'forgot_password_view.dart';
import 'verify_email_view.dart';

/// Builds the page containing fields to enter a username and password, plus buttons.
class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      actions: [
        ForgotPasswordAction((context, email) {
          Navigator.pushNamed(
            context,
            ForgotPasswordView.routeName,
            arguments: {'email': email},
          );
        }),
        AuthStateChangeAction<SignedIn>((context, state) {
          if (!state.user!.emailVerified) {
            Navigator.pushNamed(context, VerifyEmailView.routeName);
          } else {
            Navigator.pushReplacementNamed(context, Home.routeName);
          }
        }),
        AuthStateChangeAction<UserCreated>((context, state) async {
          final user = state.credential.user!;
          await FirebaseFirestore.instance
              .collection('users')
              .doc(user.email)
              .set({
            'email': user.email,
            'id': user.email,
            'name': 'Fill out your account info in',
            'username': 'Account',
          });

          if (context.mounted) {
            if (!state.credential.user!.emailVerified) {
              Navigator.pushNamed(context, VerifyEmailView.routeName);
            } else {
              Navigator.pushReplacementNamed(context, Home.routeName);
            }
          }
        }),
        AuthStateChangeAction<CredentialLinked>((context, state) {
          if (!state.user.emailVerified) {
            Navigator.pushNamed(context, VerifyEmailView.routeName);
          } else {
            Navigator.pushReplacementNamed(context, Home.routeName);
          }
        }),
      ],
      styles: const {
        EmailFormStyle(signInButtonVariant: ButtonVariant.filled),
      },
      headerBuilder: headerImage('assets/images/loginpic.png'),
      sideBuilder: sideImage('assets/images/loginpic.png'),
      subtitleBuilder: (context, action) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            action == AuthAction.signIn
                ? 'Welcome to PetBite! Please sign in.'
                : 'Welcome to PetBite! Please create an account.',
          ),
        );
      },
      footerBuilder: (context, action) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              action == AuthAction.signIn
                  ? 'By signing in, you agree to our terms and conditions.'
                  : 'By registering, you agree to our terms and conditions.',
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        );
      },
    );
  }
}
