import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_supabase/pages/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  String supabaseUrl = dotenv.env["SUPABASE_URL"] ?? "";
  String supabaseKey = dotenv.env["SUPABASE_KEY"] ?? "";
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Text("Hellp World"),
    );
  }
}

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final SupabaseClient supabase = Supabase.instance.client;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
