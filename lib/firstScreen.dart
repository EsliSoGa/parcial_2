import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: const [
                  Text(
                    'Guatemala',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    'Corazón del mundo maya',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: const [
                      SizedBox(
                        width: 30.0,
                      ),
                      ImageVertical(
                        imagenes: 'assets/images/tikal.jpg',
                        nombre: 'Tikal',
                        descripcion:
                            'Civilización maya, en su máxima expresión',
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      ImageVertical(
                        imagenes: 'assets/images/atitlan.jpg',
                        nombre: 'Atitlán',
                        descripcion: 'El lago más hermoso del mundo',
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      ImageVertical(
                        imagenes: 'assets/images/Semuc.jpg',
                        nombre: 'Semuc',
                        descripcion: 'Un paraíso natural en medio del bosque',
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      ImageVertical(
                        imagenes: 'assets/images/xela.jpg',
                        nombre: 'Xela',
                        descripcion:
                            'La cuna de la cultura y de los mejores ingenieros',
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.25,
              child: Column(
                children: const [
                  Text(
                    'Actividades',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.85,
                //height: 250,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    ImageHorizontal(
                      imagenes: 'assets/images/Tajumulco.jpg',
                      nombre: 'Volcán Tajumulco',
                      dias: '2 días',
                      precio: 'Q.325',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ImageHorizontal(
                      imagenes: 'assets/images/cupulasXela.jpg',
                      nombre: 'Cultura en el altiplano',
                      dias: '3 días',
                      precio: 'Q.570',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ImageHorizontal(
                      imagenes: 'assets/images/tecpan.jpg',
                      nombre: 'Camping Tecpán',
                      dias: '2 días',
                      precio: 'Q.430',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ImageHorizontal(
                      imagenes: 'assets/images/Todossantos.jpg',
                      nombre: 'Sendero en Todos Santos',
                      dias: '1 días',
                      precio: 'Q.270',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageHorizontal extends StatelessWidget {
  final String imagenes;
  final String nombre;
  final String dias;
  final String precio;
  const ImageHorizontal({
    required this.imagenes,
    required this.nombre,
    required this.dias,
    required this.precio,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.11,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: AssetImage(imagenes),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.11,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(
              colors: [
                Colors.grey.withOpacity(0.0),
                Colors.black45,
              ],
              stops: const [0.02, 0.55],
              begin: FractionalOffset.bottomRight,
              end: FractionalOffset.bottomLeft,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
              child: Column(
                /*mainAxisAlignment: MainAxisAlignment.spaceBetween,*/
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    nombre,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.33,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    dias,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    precio,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ImageVertical extends StatelessWidget {
  final String imagenes;
  final String nombre;
  final String descripcion;
  const ImageVertical({
    Key? key,
    required this.imagenes,
    required this.nombre,
    required this.descripcion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: AssetImage(imagenes),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 200.0,
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(
              colors: [
                Colors.grey.withOpacity(0.0),
                Colors.black45,
              ],
              stops: const [0.2, 0.95],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 20.0,
            ),
            SizedBox(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nombre,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    descripcion,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
