import 'package:flutter/material.dart';
import 'register_contact_screen.dart'; // Importar la pantalla de registro de contacto
import 'simple_view_screen.dar'; // Importar la pantalla simple
// import 'contact_list_screen.dart'; // Importar la pantalla de lista de contactos
import 'eventos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/register': (context) => const RegisterContactScreen(),
        '/simple_view': (context) => const SimpleViewScreen(),
//        '/contact_list': (context) => const ContactListScreen(),
        '/eventos': (context) => const RequestPage(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const MyHomePage(), // Home Page
    const RegisterContactScreen(), // Register Contact Page
    const SimpleViewScreen(), // Simple View Page
    const RequestPage(),
    //const ContactListScreen(), // Contact List Page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Registrar Contacto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'Simple View',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contactos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 21, 0),
        unselectedItemColor: Colors.black, // Color de ítems no seleccionados
        backgroundColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 21, 0),
        title: const Text('Aplicación practica'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 60,
              backgroundImage:
                  AssetImage('assets/imagen.jpeg'), // Ruta de la imagen
              backgroundColor: Color.fromARGB(255, 255, 21, 0),
            ),
            const SizedBox(height: 20),
            const Text(
              'Carlos Ivan Cruz Zarmiento',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8B4513),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Matrícula: 221236',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                  label: const Text('Mensaje'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 21, 0),
                    foregroundColor: Colors.white,
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.call),
                  label: const Text('Llamada'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 21, 0),
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
