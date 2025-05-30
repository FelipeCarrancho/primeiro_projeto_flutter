import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        actions: [
          CustomSwitch(),
        ], //actions: [] função para criar botão no canto superior direito
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: 50, height: 50, color: Colors.black),
                Container(width: 50, height: 50, color: Colors.black),
                Container(width: 50, height: 50, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}



// código antigo de referência 3

// Container(
//         height: 200,
//         width: 200,
//         color: Colors.black,
//         child: Center(
//           child: Container(height: 100, width: 100, color: Colors.green),
//         ),
//       ),

// código antigo de referência 2

// Center(
//         child: GestureDetector(
//           child: Text('Contador: $counter', style: TextStyle(fontSize: 20)),
//           onTap: () {
//             setState(() {
//               counter++;
//             });
//           },
//         ),
//       ),


// código antigo de referência 1

// Container(
//       color:
//           Colors
//               .deepPurpleAccent, // Adicionei cor de fundo ao Container, que se deixasse o container vazio dava erro no código
//       child: Center(
//         child: Text(
//           title,
//           textDirection: TextDirection.ltr,
//           style: TextStyle(color: Colors.black, fontSize: 50.0),
//         ),
//       ),
//     );