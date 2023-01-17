import 'package:books_store/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/resources/app_colors.dart';
import 'core/utils/app_routes.dart';
import 'core/utils/service_locator.dart';
import 'features/home/data/repos/home_repo_impl.dart';
import 'features/home/presentation/manager/featured_books/featured_books_cubit.dart';

void main() {
  setup();
  runApp(const BooksStore());
}

class BooksStore extends StatelessWidget {
  const BooksStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            homeRepo: getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            homeRepo: getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(
        themeMode: ThemeMode.dark,
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.nunitoSansTextTheme(
            ThemeData.dark().textTheme,
          ),
          scaffoldBackgroundColor: AppColors.kPrimaryColor,
          primaryColor: AppColors.kPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
