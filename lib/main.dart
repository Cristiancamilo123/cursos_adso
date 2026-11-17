
import 'package:material_ui/material_ui.dart';
import 'views/login_view.dart';

void main() {
  runApp(const CursosAdsoApp());
}

class CursosAdsoApp extends StatelessWidget {
  const CursosAdsoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cursos ADSO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginView(),
    );
  }
}
