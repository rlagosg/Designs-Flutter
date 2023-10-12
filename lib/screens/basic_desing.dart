import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
   
  const BasicDesingScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
      
            //imagen
            FadeInImage(
             placeholder: AssetImage('assets/no-image.jpg'),
             image: AssetImage('assets/landscape.jpg'),
             width: 530,
             height: 240,
             fit: BoxFit.cover,
            ),
      
            //titulo
            Title(),
      
            //Button Section
            ButtonSection(),
      
            //Descripcion
            Text('Mi orgullo me sacó del jardín\nSu humildad puso el jardín en mí\nY si vendiera todo lo que tengo\nA cambio de su amor yo fallaría\nPorque su amor no se compra\nNi se merece\nSu amor es un regalo\nDe gracia se recibe\nQuiero conocer a Jesús\nQuiero conocer a Jesús\nQuiero conocer a Jesús\nQuiero conocer a Jesús\nMi orgullo me sacó del jardín\nSu humildad puso el jardín en mí\nY si vendiera todo lo que tengo\nA cambio de su amor yo fallaría\nPorque su amor no se compra\nNi se merece\nSu amor es un regalo\nDe gracia se recibe\nPorque su amor no se compra\nNi se merece\nSu amor es un regalo\nDe gracia se recibe\nQuiero conocer a Jesús\nQuiero conocer a Jesús\nQuiero conocer a Jesús\nQuiero conocer a Jesús\nY ser hallado en él\nY ser hallado en él\nYeshua ah...\nYeshua ah...\nYeshua ah...\nYeshua ah...\nYeshua ah...\nYeshua ah...\nYeshua ah...\nYeshua ah...\nMi amado es el más bello\nEntre millares y millares\nMi amado es el más bello\nEntre millares y millares\nMi amado es el más bello\nEntre millares y millares\nMi amado es el más bello\nEntre millares y millares\nMi preferido, mi predilecto\nMi preferido, mi predilecto Jesús, Jesús\n', textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 35, vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Yeshua, QUIERO CONOCER A JESUS', style: TextStyle( fontWeight: FontWeight.bold),),
              SizedBox(height: 3),
              Text('Llévame De Vuelta', style: TextStyle( color: Colors.black45),),
            ],
          ),

          Expanded(child: Container(),),

          const Icon( Icons.star, size: 15, color: Colors.red,),
          const Text('5')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric( horizontal: 30, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [

          CustomButton( texto: 'CALL',  icono: Icons.call),
          CustomButton( texto: 'ROUTE', icono: Icons.near_me_sharp),
          CustomButton( texto: 'SHARE', icono: Icons.share),

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final String texto;
  final IconData icono;

  const CustomButton({
    Key? key, 
    required this.texto, 
    required this.icono,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( icono, size: 25, color: Colors.blue,),
        const SizedBox(height: 10),
        Text(texto, style: const TextStyle(color: Colors.blue),)
      ],
    );
  }
}