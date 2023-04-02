import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/widgets/movie_list_item.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Movie> movies=Movie.movies;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: _CustomClipper(),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff000b49),
            child: Center(
              child: Text("Explore",
              style:Theme.of(context).textTheme.headline5!.
              copyWith(color: Colors.white,
              fontWeight: FontWeight.bold) ,
              ),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text:TextSpan(style: Theme.of(context).textTheme.headline6,
                children: [
                  TextSpan(text: 'Featured'+ "  ",
                  style:Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold)),
                  
                  const TextSpan(text: 'Movies',style: TextStyle(
                    color: Colors.grey
                  ))
                ]
                ) 
                
                ),
                SizedBox(
                  height: 20,
                ),
                for (final movie in movies)
                 InkWell(
                  onTap: () {
                    
                    
                  },
                   child: MovieListItem(
                    imageUrl: movie.imagepath,
                      name: movie.name,
                       information: '${movie.year} |${movie.category} | ${movie.duration.inHours}h ${movie.duration.inMinutes.remainder(60)}m',
                    
                                 ),
                 )

                
            ],
          ),
        ) ,),
    );
  }
}

class _CustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
     double height=size.height;
     double width=size.width;

     var path =Path();
     path.lineTo(0, height-40);
     path.quadraticBezierTo(width/2, height, width,height-40);
     path.lineTo(width, 0);
     path.close();
     return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
  
}