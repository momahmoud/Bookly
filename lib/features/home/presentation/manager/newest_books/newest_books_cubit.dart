import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepo homeRepo;
  NewestBooksCubit({
    required this.homeRepo,
  }) : super(NewestBooksInitial());

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        emit(
          NewestBooksFailure(
            errorMessage: failure.errorMessage,
          ),
        );
      },
      (books) {
        emit(
          NewestBooksSuccess(
            books: books,
          ),
        );
      },
    );
  }
}
