import 'package:flutter/material.dart';

//ctrl + alt + l = formata o texto

//Alignment - alinhamento
void main() {
  runApp(const MyApp());
}

//Criando um widget
//Usar o atalho stless para criar um widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  //Criando uma função para decrementar no botão

  void decrement() {
    setState(() {
      count--;
    });
    print('Decrement');
  }

  void increment() {
    setState(() {
      count++;
    });
    print('Increment');
  }

  //Para verificar se está vazio
  bool get isEmpty => count == 0;

  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/usagi.jpg',
              ),
            ),
          ),
          child: Column(
            //Alinhamento dos filhos da coluna
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isFull ? 'Lotado' : 'Pode entrar',
                style: TextStyle(
                  fontSize: 26,
                  color: isFull ? Colors.red : Colors.cyan,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Text(
                    count.toString(),
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.amber,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: isEmpty ? null : decrement,
                      style: TextButton.styleFrom(
                          backgroundColor: isEmpty ? Colors.white.withOpacity(0.3) : Colors.amberAccent,
                          fixedSize: const Size(50, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: const Text(
                        '-',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      )),
                  const SizedBox(
                    width: 60,
                  ),
                  TextButton(
                      onPressed: isFull ? null : increment,
                      style: TextButton.styleFrom(
                          backgroundColor: isFull ? Colors.white.withOpacity(0.3) : Colors.amberAccent,
                          fixedSize: const Size(50, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: const Text(
                        '+',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      )),
                ],
              )
            ],
          ),
        )
      /*
      appBar: AppBar(
        title: Text('Título da barra'),
      ),
      drawer: Drawer(), //Tres linhas do menu
       */
    );
  }
}


