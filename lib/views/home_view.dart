
import 'package:material_ui/material_ui.dart';
import 'detail_view.dart';
import '../models/curso.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<Curso> cursos = const [
    Curso(
      nombre: 'Análisis y Desarrollo de Software',
      descripcion: 'Aprendizaje de programación y desarrollo de software.',
      duracion: '24 meses',
    ),
    Curso(
      nombre: 'Programación Web',
      descripcion: 'Creación de páginas y aplicaciones web.',
      duracion: '12 meses',
    ),
    Curso(
      nombre: 'Bases de Datos',
      descripcion: 'Organización y administración de información.',
      duracion: '6 meses',
    ),
    Curso(
      nombre: 'Desarrollo Móvil',
      descripcion: 'Creación de aplicaciones para dispositivos móviles.',
      duracion: '12 meses',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cursos disponibles'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: cursos.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(
                Icons.school,
                color: Colors.blue,
              ),
              title: Text(cursos[index].nombre),
              subtitle: const Text('Curso de formación ADSO'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailView(
                      nombreCurso: cursos[index].nombre,
                      descripcion: cursos[index].descripcion,
                      duracion: cursos[index].duracion,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

