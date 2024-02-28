import 'package:flutter/material.dart';
import 'package:movie_list_flutter/constants/text_style_constants.dart';
import 'package:movie_list_flutter/api/tmdb_api_service.dart';

class TopRated extends StatefulWidget {
  const TopRated({super.key});

  @override
  State<TopRated> createState() => _TopRatedState();
}

class _TopRatedState extends State<TopRated> {
  Future<List<dynamic>>? _popularMovies;

  @override
  void initState() {
    super.initState();
    _fetchTopRatedMovies();
  }

  Future<void> _fetchTopRatedMovies() async {
    final tmdbService = TmdbApiService();
    setState(() {
      _popularMovies = tmdbService.fetchTopRatedMovies();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 32, 0, 5),
          child: Text('Top rated', style: TextStyleConstants.boldTextStyle),
        ),
        SizedBox(
          height: 160,
          child: _popularMovies != null
              ? FutureBuilder<List<dynamic>>(
                  future: _popularMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final movies = snapshot.data!;
                      return ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        scrollDirection: Axis.horizontal,
                        itemCount: movies.length > 12 ? 12 : movies.length,
                        itemBuilder: (context, index) {
                          final movie = movies[index];
                          final posterPath = movie['poster_path'];
                          return Container(
                            width: 100,
                            margin: const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Image.network(
                                'https://image.tmdb.org/t/p/w220_and_h330_face/$posterPath'),
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  })
              : const Center(child: CircularProgressIndicator()),
        ),
      ],
    );
  }
}
