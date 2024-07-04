import 'package:chatcom/screens/chat_screen.dart';
import 'package:chatcom/screens/login_screen.dart';
import 'package:chatcom/screens/registration_screen.dart';
import 'package:chatcom/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: FirebaseOptions(
          apiKey: 'AIzaSyABokkMlTLT3VxJY3w_DmbF6CgxL19xaVQ',
          appId: '1:912417395823:android:ae0aeff1e6381d9edb699a',
          messagingSenderId: '912417395823',
          projectId: 'chathub-45b8d',
          storageBucket: 'chathub-45b8d.appspot.com',
        )
    );
    runApp(MyApp());
  } catch (e) {
    print('Firebase initialization error: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RegistrationScreen(),
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'login_screen': (context) => LoginScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'chat_screen': (context) => ChatScreen(),
      }
      ,
    );
  }
}

