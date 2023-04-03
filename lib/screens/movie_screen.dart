import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_model.dart';

class MovieScreen extends StatelessWidget {
  final Movie movie;

  const MovieScreen({Key? key,  required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ..._buildBackground(context,movie),
        Positioned(
          bottom: 150,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  "Movie",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '${movie.year} |${movie.category} | ${movie.duration.inHours}h ${movie.duration.inMinutes.remainder(60)}m',
                 style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        )
     
      ],
    );
  }

 List<Widget>  _buildBackground(context,movie) {
    return [Container(
        height: double.infinity,
        color: Color(0xff000849),
      ),
         Image.asset("assets/img1.jpg",
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.5,
        fit: BoxFit.cover,
        
        ),
        Positioned.fill(
          child: DecoratedBox(
            decoration:BoxDecoration(
               gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Color(0xff000b49)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.3,0.5]
                  )
            ) ,)
            ),
      
      
      
      
      
      
      
      
      ];
  }
}