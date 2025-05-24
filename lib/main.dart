 import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double anchura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     print("Floitn action button presionado");
        //   },
        // ),
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Nombre del App",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 236, 226, 37),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          color: Colors.black,
          child: Container(
            margin: EdgeInsets.all(30),
            color: Color.fromARGB(255, 0, 126, 223),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  "https://images.unsplash.com/photo-1726137570619-4e6b55c17c51?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8", 
                  width: anchura,
                  fit: BoxFit.cover
                ),
                Image.asset(
                  "assets/images/image1.jpeg",
                  width: anchura,
                  fit: BoxFit.cover
                ),
                ElevatedButton(
                  child: Text("Presionar"),
                  onPressed: (){
                    print("Hola");
                  },
                  style: 
                  ElevatedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Color.fromARGB(255, 162, 21, 17),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    elevation: 10
                  )
                ),
                ElevatedButton.icon(
                  onPressed: (){
                    print("boton icono");
                  }, 
                  icon: Icon(Icons.thumb_up), 
                  label: Text("Me gusta"),
                  onLongPress: (){
                    print("presionado largo");
                  }
                )  
              ],
            ),
          ),
        ) 
      ),
    );
  }
}