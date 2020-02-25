import 'package:flutter/material.dart';

class Cartados extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContadorPage(),
    );
  }
}

class ContadorPage extends StatefulWidget{
  @override
  createState() => _ContadorPageState();
}
class _ContadorPageState extends State<ContadorPage>{
  final _estiloTexto = new TextStyle (fontSize: 16.0, color: Colors.black);

  int _conteo = 0;

  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:  AppBar(
        title:  Text('M I C H E L L E'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        
      ),

      body: Center(
        child: Column(
          children: <Widget>[
          Text('$_conteo     (ღ˘⌣˘)♥ ℒ♡ⓥℯ ㄚ♡ⓤ    $_conteo ', style: new TextStyle(fontSize: 25.0, color: Colors.blue),),
          Text('ANTES que nada espero te encuentre bien, la verdad', style: _estiloTexto,),
          Text('no se como comenza esta carta, 🤔 quiero pedirte', style: _estiloTexto,),
          Text('disculpas por mi actitud ante lo ultimo que ha pasado', style: _estiloTexto,),
          Text('entre nosotros, y me gustaria areglarlo cara a cara, si ', style: _estiloTexto,),
          Text('tu me lo permitieras verte. ❤〜٩( ˃́▿˂̀ )۶〜❤', style: _estiloTexto,),
          Text('', style: new TextStyle(fontSize: 5.0, color: Colors.black),),
          Text('Llevo tiempo pensando en lo que ocurrio entre Tu y Yo', style: _estiloTexto,),
          Text('cuando fuimos novios. Nunca podre olvidar ese tiempo ', style: _estiloTexto,),
          Text('tan maravilloso que pase junto a ti, pues fue una muy', style: _estiloTexto,),
          Text('bonita parte de mi vida. Decirte <3, que te extraño ', style: _estiloTexto,),
          Text('muchisimo, que te amo, que nunca te olvide, y que ', style: _estiloTexto,),
          Text('nunca te olvidare, que eres irremplazable en mi vida,', style: _estiloTexto,),
          Text('y pienso que yo nunca me podre olvidar de ti, y que', style: _estiloTexto,),
          Text('sin ti me siento a oscuras. 💔 👈😢', style: _estiloTexto,),
          Text('', style: new TextStyle(fontSize: 10.0, color: Colors.black),),
          Text('Nunca olvidare esos besos que me distes, esos abrazos ', style: _estiloTexto,),
          Text('y esos te quiero, esas cosas me llenaron de alegria y', style: _estiloTexto,),
          Text('aun hoy me sigue llenando el corazon con  los recuerdos.', style: _estiloTexto,),
          Text('Se que te hice daño, lo se, y que talvez por todo 😿 ', style: _estiloTexto,),
          Text('lo que pasamos ya no saldras conmigo, pero mi corazon', style: _estiloTexto,),
          Text('iba a estallar si no lo decia, pues por mucha gente ', style: _estiloTexto,),
          Text('que me pidiera salir, por mucha gente que intentara ', style: _estiloTexto,),
          Text('intentara amar para olvidarte se me hace imposible,  ', style: _estiloTexto,),
          Text('tu me llenas por dentro, tu me sacias de amor, tu me ', style: _estiloTexto,),
          Text('haces reir con solo el recordar de tu sonrisa. ', style: _estiloTexto,),
          Text('', style: _estiloTexto,),
          Text(' $_conteo👩‍❤‍👨 TE AMO MUCHO   👩‍❤‍👨$_conteo', style: new TextStyle(fontSize: 28.0, color: Colors.red),),


        ],)
      ),
      floatingActionButton:_crearBotones(),
    );
  }
  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
      SizedBox(width: 30),
      FloatingActionButton(heroTag: 'decrementa', backgroundColor: Colors.yellow, child: Icon(Icons.sentiment_very_dissatisfied, color: Colors.black,), onPressed: _sustraer),
      Expanded(child: SizedBox(width: 150.0)),//separacion de los iconos
      FloatingActionButton(heroTag: 'reset',backgroundColor: Colors.purple,child: Icon(Icons.wc), onPressed: _reset),
      SizedBox(width: 130.0),//separacion de los iconos
      FloatingActionButton(heroTag: 'incrementa', backgroundColor: Colors.black, child: Icon(Icons.favorite, color: Colors.pink,), onPressed: _agregar),
      ],
    );
  }
void _agregar(){
    setState((){
        _conteo++;
    });
  }
  void _sustraer(){
    setState((){
        _conteo--;
    });
  }
  void _reset(){
    setState((){
        _conteo = 0;
    });
  }
}