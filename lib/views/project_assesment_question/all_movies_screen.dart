import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamran_akbar_technical_test_app/utills/spacing.dart';
import 'package:kamran_akbar_technical_test_app/views/project_assesment_question/specific_movie_screen.dart';

import '../../models/MoviesModel.dart';
import '../../reusable_widgets/reusable_appbar.dart';
import '../../services/data.dart';
import '../../utills/text_styles.dart';
import '../homepage/homepage.dart';

class AllMoviesScreen extends StatelessWidget {
  const AllMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ReAppBar(
        titleText: "Project Assessment",
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        height: context.height * 1,
        width: context.width * 1,
        child: FutureBuilder<MoviesModel?>(
          future: ApiHitting.getMovies(),
          builder:
              (BuildContext context, AsyncSnapshot<MoviesModel?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              if (snapshot.data == null) {
              } else {
                return ListView.separated(
                  itemCount: snapshot.data!.search!.length,
                  separatorBuilder: (BuildContext context, int index) => 10.ph,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      dense: true,
                      tileColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      isThreeLine: true,
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(snapshot.data!.search![index].poster!),
                      ),
                      title: Text(
                        snapshot.data!.search![index].title!,
                        style: CCustomTextStyles.black610,
                      ),
                      subtitle: Text(
                        snapshot.data!.search![index].year!,
                        style: CCustomTextStyles.black610,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Get.to(() => SpecificMovieScreen(
                              search: snapshot.data!.search![index],
                            ));
                      },
                    );
                  },
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
