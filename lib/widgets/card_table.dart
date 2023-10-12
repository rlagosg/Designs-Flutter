import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const[
         TableRow(
          children: [
            _SingleCard( color: Colors.blue, icono: Icons.border_all_outlined, text: 'General'),
            _SingleCard( color: Colors.pinkAccent, icono: Icons.car_rental, text: 'Transport'),
          ]
         ),
         TableRow(
          children: [
            _SingleCard( color: Colors.purple, icono: Icons.shop, text: 'Shopping'),
            _SingleCard( color: Colors.purpleAccent, icono: Icons.cloud, text: 'Bill'),
          ]
         ),
         TableRow(
          children: [
            _SingleCard( color: Colors.blue, icono: Icons.movie, text: 'Entertainment'),
            _SingleCard( color: Colors.yellow, icono: Icons.food_bank_outlined, text: 'Grocery'),
          ]
         ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icono;
  final Color color;
  final String text;

  const _SingleCard({
    required this.icono,
    required this.color,
    required this.text
  });
  
  @override
  Widget build(BuildContext context) {

    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon( icono, size: 35, color: Colors.white,),
          ),
          const SizedBox(height: 10),
          Text(text, style: const TextStyle(color: Colors.blue, fontSize: 18))
        ],
      )      
    );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

   const _CardBackground({
    Key? key, 
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5),
          child: Container(
            
            height: 180,
            width: 190,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}