import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final HomeRepo homeRepo;
  FeaturedBooksCubit({
    required this.homeRepo,
  }) : super(FeaturedBooksInitial());

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) {
        emit(
          FeaturedBooksFailure(
            errorMessage: failure.errorMessage,
          ),
        );
      },
      (books) {
        emit(
          FeaturedBooksSuccess(
            books: books,
          ),
        );
      },
    );
  }
}
