import 'package:flutter/material.dart';
import 'package:michelleflutter/pages/calculadora.dart';
import 'package:michelleflutter/pages/carta2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App Love',
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //creamos un arreglo de datos imagenes y nombre ejercicio
  List<Container> listamos = List();


  var arreglox = [
    {"nombre": "TE AMO DEMASIADO", "imagen": "pierna2.jpg", "deporte": "Ha pasado ya mucho tiempo desde que nos alejamos y aun no puedo creer que sigamos separados. cada dia me pongo a pensar en ti, y te juro, se me humedecen los ojos :,C de emoción y desolación. Me faltas tú, mi Vida y quiero que sepas, que todo este tiempo han sido útiles para darme cuenta del error que cometí al haberte dejado tanto tiempo. "},
    {"nombre": "ERES MI VIDA", "imagen": "gluteos2.jpg", "deporte": "Es difícil olvidar a alguien a quien se ha amado tanto. Pienso que si una relación terminó, no significa que el amor haya acabado. Y es normal querer recuperar un amor perdido, desear recuperar aquella felicidad que una vez la tuve contigo, que eres aquella persona que sigue siendo todo para mi."},
    {"nombre": "TE EXTRAÑO", "imagen": "pesas.jpg", "deporte": "Hice esta App pensando en ti, que no es una carta de amor, mas bien una App de AMOR. declarando mis intenciones para que sepas la conclusión a la que he llegado todo este tiempo. Y es que no quiero vivir sin ti. Tampoco puedo, </3 la verdad!. He pensado mucho en mis acciones y en cómo no volverlas a cometer, especialmente contigo, he buscado mil formas de pedirte perdón y es por eso que te realize esta App con mensajes, que son mis más sinceros sentimientos, te hablo con el corazón, contándote la mala situación emocional por la que estoy pasando, pagando las culpas de mi más grave error."},
    {"nombre": "ERES MI TODO", "imagen": "cinta.jpg", "deporte": "A pesar de todo lo que hemos pasado, de los malentendidos y los reproches, te sigo queriendo. Y sé que eres la persona más importante de mi vida porque desde que no estamos juntos me siento vacío y me siento muy mal si no estás conmigo. :,C"},
    {"nombre": "TE NECESITO", "imagen": "pierna.jpg", "deporte": "Quiero hablarte de lo que he cambiado en este tiempo sin ti, de lo que he comprendido y de lo que me he propuesto. Me he propuesto ser más comprensivo y he comprendido que te sigo amando"},
    {"nombre": "TE ECHO DE MENOS", "imagen": "cinta2.jpg", "deporte": "Estoy dispuestO a dejar de lado todo el rencor, porque nuestra relación lo merece. ¿Serías tú capaz de olvidar el orgullo? Partamos desde 0, hagamos borrón y cuenta nueva y volvámonos a conocer igual que hicimos ese 12 de Octubre del 2012. Te amo, mucho más de lo que te demostré cuando estaba contigo, mucho más de lo que te imaginas. Por favor dame la oportunidad de hacer las cosas bien y de amarte como te lo merece ."},
    {"nombre": "TE QUIERO", "imagen": "peso.jpg", "deporte": "Perdóname, tú eres quien yo elegí para vivir mis sueños y mi vida, volvamos a empezar. pero ahora te ruego reconsideres tu decisión, yo te sigo amando y estoy totalmente seguro que quiero hacerte la mujer más feliz del mundo. Permíteme demostrarte que puedo y quiero ser el mejor contigo. Te adoro y siempre lo haré.."},
    {"nombre": "ME ENCANTAS", "imagen": "rusa.jpg", "deporte": "Sé que es un riesgo retomar una relación rota, pero es que no quiero retomarla, quiero empezar de nuevo. Ahora que somos más conscientes, ahora que conocemos nuestras debilidades, pero con más experiencia y todo este tiempo que he reflexionado. Me gustaría hacerte una propuesta; ¿quieres volver conmigo?"},
    {"nombre": "VUELVE!", "imagen": "peso2.jpg", "deporte": "No sé que hacer cuando no te tengo cerca, me vuelvo loco solo recordando tu olor y ya no sé cómo arreglar el grave error que cometí contigo. No supe valorar lo muchísimo que vales y me siento un imbécil. Verdaderamente puedo decirte que estoy muy arrepentido por todo lo que hice y también por las cosas que no hice, me gustaría que el tiempo pudiera volver hacia atrás para no cometer los mismo errores pero no es posible. Lo único que puedo hacer es pedirte perdón por todo el daño que te cause."},
    {"nombre": "LA CHICA MAS HERMOSA", "imagen": "abdomen2.jpg", "deporte": "Lo que sentía por ti aún no ha muerto, sigue aquí latiendo en mi corazón. Por favor dame una oportunidad de demostrarte que aún puedo hacerte feliz, que lo nuestro aún tiene futuro. Te amo"},

  ];


  _listado() async {
    for (var i = 0; i < arreglox.length; i++) {
      final arregloxyz = arreglox[i];
      final String imagen = arregloxyz["imagen"];

      listamos.add(new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Hero(
                tag: arregloxyz['nombre'],
                child: new Material(
                  child: new InkWell(
                    onTap: () =>
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new Detalle(
                        nombre: arregloxyz['nombre'],
                        imagen: imagen,
                        deporte: arregloxyz['deporte']
                      ),
                    )),
                    child: new Image.asset(
                      "img/$imagen",
                      fit: BoxFit.contain
                    ),
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(3.0),
              ),
              new Text(
                arregloxyz['nombre'],
                style: new TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
  }

    @override
   void initState() { 
     _listado();
      super.initState();      
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(title: new Text('<3 ESTA APP LA HICE PENSANDO EN TI <3'), backgroundColor: Colors.deepPurpleAccent),
          drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text(''),
                  accountEmail: new Text(''),
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('img/estiramiento1.jpg'),
                    )
                  ),
                ),
                new Divider(),
                new ListTile(
                  title: new Text("Michelle"),
                  trailing: new Icon(Icons.favorite, color: Colors.pink,),
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => Calculadora(),
                  )),
                ),
                new Divider(),
                new ListTile(
                  title: new Text("Lex"),
                  trailing: new Icon(Icons.favorite, color: Colors.green,),
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => Cartados(),
                    
                  )),
                ),
              ],
            ),
          ),
          body: new GridView.count(
            crossAxisCount: 2, //numero de columas de la primera pagina pruebn con 1
            mainAxisSpacing: 0.1, //espacio entre card
            childAspectRatio: 0.700, //espacio largo de cada card
            children: listamos,
          ),
    );
  }
}

//creamos el metodo detalle
//este se usa cuando pulsamos para ver segunda pantalla la descripcion del ejercicio
class Detalle extends StatelessWidget {
  Detalle({this.nombre, this.imagen, this.deporte});
  final String nombre;
  final String imagen;
  final String deporte;


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: new ListView(
          children: <Widget>[
            new Container(
              height: 387.0,//tamaño de la segunda imagen
              child: new Hero(
                tag: nombre,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "img/$imagen",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
              new IniciarNombre(
                nombre: nombre,
              ),
              new IniciarIcon(),
              new Informacion(
                deporte: deporte,
              ),
          ],
        ),
      );
    } 

}

class IniciarNombre extends StatelessWidget {
  IniciarNombre({this.nombre});
  final String nombre;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nombre,
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),

              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(//icono que agrega estrellas calificacion
                Icons.star,
                size: 30.0,
                color: Colors.green,
              ),
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.yellow,
              ),
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.red,
              ),
              new Text(
                "100",
                style: new TextStyle(fontSize: 18.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class IniciarIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new IconTec(
           // icon: Icons.call,
            tec: "-"
                ), 
                new IconTec(
           // icon: Icons.message,
            tec: "MI GRAN Y UNICO AMOR"
                ),
                new IconTec(
           // icon: Icons.photo,
            tec: "-"
                ),
                  ],
      ),
    );
  }
}

class IconTec extends StatelessWidget {
  IconTec({this.icon, this.tec});
  final IconData icon;
  final String tec;
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 30.0,
            color: Colors.blue,
          ),
          new Text(
            tec,
            style: new TextStyle(fontSize: 27.0, color: Colors.redAccent),
          )
        ],
      ),
    );
  }
}

class Informacion extends StatelessWidget {
  Informacion({this.deporte});
  final String deporte;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            deporte,
            style: new TextStyle(fontSize: 25.0, color: Colors.black),
          ),
        ),
      ),
    );
  }
}