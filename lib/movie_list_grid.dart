import 'package:flutter/material.dart';
import 'package:w12/movie.dart';

class MovieGrid extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      name: 'Shin Evangelion',
      director: 'Hideaki Anno',
      studio: 'Studio Khara',
      released: 2021,
      region: 'Japan',
      img: 'lib/images/eva01.png',
    ),
    Movie(
      name: 'Shin Ultraman',
      director: 'Hideaki Anno',
      studio: 'Studio Khara',
      released: 2022,
      region: 'Japan',
      img: 'lib/images/ultraman.png',
    ),
    Movie(
      name: 'Shin Kamenrider',
      director: 'Hideaki Anno',
      studio: 'Toei studio',
      released: 2023,
      region: 'Japan',
      img:
          'lib/images/kamenrider.png',
    ),
    Movie(
      name: 'Shin Godzilla',
      director: 'Minami Ichikawa',
      studio: 'Toho Pictures',
      released: 2016,
      region: 'Japan',
      img: 'lib/images/godzilla.png',
    ),
    Movie(
      name: 'John Wick 4',
      director: 'Chad Stahelski',
      studio: 'Summit Entertainment',
      released: 2023,
      region: 'United States',
      img: 'lib/images/johnwick4.png',
    ),
    Movie(
      name: 'Nobody',
      director: 'Ilya Naishuller',
      studio: 'Eighty Two Films',
      released: 2021,
      region: 'United States',
      img: 'lib/images/nobody.png',
    ),
    Movie(
      name: 'SISU',
      director: 'Jalmari Helander',
      studio: 'Stage 6 Films',
      released: 2023,
      region: 'Finland',
      img: 'lib/images/sisu.png',
    ),
    Movie(
      name: 'Pacific Rim',
      director: 'Guillermo del Toro',
      studio: 'Legendary Pictures',
      released: 2013,
      region: 'United States',
      img: 'lib/images/pacificrim.png',
    ),
    Movie(
      name: 'Scary Movie',
      director: 'Keenen Ivory Wayans',
      studio: 'Wayans Bros',
      released: 2000,
      region: 'United States',
      img: 'lib/images/scarymovie.png',
    ),
    Movie(
      name: 'Kung Fu Hustle',
      director: 'Stephen Chow',
      studio: 'Columbia Pictures Film',
      released: 2004,
      region: 'China',
      img: 'lib/images/kungfu.png',
    ),
  ];
  MovieGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movie List',
          style: TextStyle(color: Colors.black
            ),
          ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      backgroundColor: Colors.black,
      body: GridView.builder(
          padding: EdgeInsets.all(10),
          itemCount: movies.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 5),
          itemBuilder: ((context, index) {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 0, 0, 0),
                    image: DecorationImage(
                      image: AssetImage(movies[index].img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  movies[index].name,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,                 
                  ),
                ),
                
              ],
            );
          })),
    );
  }
}
