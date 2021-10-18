import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:navneet/model/post.dart';
import 'package:navneet/services/data_service.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<List<Post>> {
  final _dataService = DataService();

  PostsCubit() : super([]);

  void getPosts() async => emit(await _dataService.getPosts());
}
