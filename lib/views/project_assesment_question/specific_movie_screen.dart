import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamran_akbar_technical_test_app/utills/spacing.dart';

import '../../models/MovieIntelModel.dart';
import '../../models/MoviesModel.dart';
import '../../reusable_widgets/reusable_appbar.dart';
import '../../services/data.dart';
import '../../utills/text_styles.dart';

class SpecificMovieScreen extends StatelessWidget {
  final Search search;

  const SpecificMovieScreen({Key? key, required this.search}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReAppBar(
        titleText: search.title!,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        height: context.height * 1,
        width: context.width * 1,
        child: FutureBuilder<MovieIntelModel?>(
          future: ApiHitting.getSpecificMovies(imbdKey: search.imdbID!),
          builder:
              (BuildContext context, AsyncSnapshot<MovieIntelModel?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              if (snapshot.data == null) {
              } else {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      20.ph,
                      Row(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(snapshot.data!.poster!),
                                    fit: BoxFit.fill)),
                          ),
                          10.pw,
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "IMBD Rating: ",
                                  style: CCustomTextStyles.black610,
                                ),
                                Text(
                                  snapshot.data!.imdbRating!,
                                  style: CCustomTextStyles.black610,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      20.ph,
                      const Text(
                        "Synopsis: ",
                        style: CCustomTextStyles.black610,
                      ),
                      20.ph,
                      Text(
                        snapshot.data!.plot!,
                        textAlign: TextAlign.justify,
                        style: CCustomTextStyles.black610,
                      ),
                    ],
                  ),
                );
              }
            } else if (snapshot.hasError) {
              return const Center(
                child:
                    Text("Error Occurred", style: CCustomTextStyles.black610),
              );
            } else {
              return const Center(
                child:
                    Text("Error Occurred", style: CCustomTextStyles.black610),
              );
            }
            return const Center(
              child: Text("Error Occurred", style: CCustomTextStyles.black610),
            );
          },
        ),
      ),
    );
  }
}
