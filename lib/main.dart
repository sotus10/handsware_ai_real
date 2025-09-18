import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
import 'register_login/login_page.dart';
import 'register_login/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Incializar Subapase
  await Supabase.initialize(
    url: 'https://jwtimgfvnmhspnvvtcbh.supabase.co/',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp3dGltZ2Z2bm1oc3BudnZ0Y2JoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTc2MjU4MzIsImV4cCI6MjA3MzIwMTgzMn0.ksRsZtLjTbzeQMy4bs7h_ojIbw-htSd8GF7ovH7qjFA',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Handsware AI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

        useMaterial3: true,
      ),
      // Página inicial 
      initialRoute: '/login',

      // Rutas
      routes: {
        '/login': (context) =>  LoginPage(),
        '/register': (context) =>  RegisterPage(),
      },
    );
  }
}


