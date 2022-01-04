import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kurs/app/screens/lesson_9/chat_screen.dart';
import 'package:flutter_kurs/app/utilities/constants/app_constants.dart';
import 'package:flutter_kurs/app/widgets/lesson_9/rounded_button.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  // final _auth = FirebaseAuth.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference userCollection;
  String email;
  String password;

  @override
  void initState() {
    super.initState();
    userCollection = firestore.collection('users');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Hero(
                tag: 'logo',
                child: SizedBox(
                  height: 200.0,
                  child: Image.asset('assets/images/chat/logo.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration:
                  AppConstants.textFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: AppConstants.textFieldDecoration.copyWith(
                  hintText: 'Enter your password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.lightBlueAccent,
              onPressed: () async {
                try {
                  UserCredential userCredential =
                      await auth.signInWithEmailAndPassword(
                          email: email, password: password);

                  if (userCredential != null) {
                    // Navigator.pushNamed(context, ChatScreen.id);

                    DocumentSnapshot documentSnapshot =
                        await userCollection.doc(userCredential.user.uid).get();

                    if (documentSnapshot.exists) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatScreen(
                                  userCredential: userCredential,
                                )),
                      );
                    }
                  } else {
                    //katani korsot
                  }
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                   // print('No user found for that email.');
                  } else if (e.code == 'wrong-password') {
                  //  print('Wrong password provided for that user.');
                  }
                } catch (e) {
                  //print(e);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}