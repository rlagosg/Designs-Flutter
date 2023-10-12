import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);

  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5,0.5],
      colors: [
        Color(0xff7FEDCA),
        Color(0xff50C2DD),              
    ])
  );
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xff50C2DD),
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),        
          scrollDirection: Axis.vertical,
          children: const[
             Page1(),
             Page2(),
            // Page1(),
            // Page1(),
            // Page1(),
          ],
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [

        //Background
        Background(),

        //Columna
        MainContent()

      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff50C2DD),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: 
        const Image( image: AssetImage('assets/scroll-1.png'))
      );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle( fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('11', style: textStyle),
          const Text('Martes', style: textStyle),
          Expanded(child: Container()),
          const Icon( Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  const Color(0xff50C2DD),
      child: Center(
        child: TextButton(
          onPressed: () {
            
          },
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()
          ), 
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30)),
          ), 
        ),
      ),
    );
  }
}