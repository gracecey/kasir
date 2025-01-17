import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login.dart'; // Impor file login.dart

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://dwiprzglytobdomipvln.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR3aXByemdseXRvYmRvbWlwdmxuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzYxMzI4NzksImV4cCI6MjA1MTcwODg3OX0.YR_24qrQYK24LbnY2GpdydJvjjRJFUw2-2UIw9KHQaU',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(), // Ubah halaman awal ke LoginScreen
    );
  }
}
