import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_image_searching_app_cleanarch/domain/model/comment/comment_model.dart';
import 'package:my_flutter_image_searching_app_cleanarch/domain/model/like/like_model.dart';
import 'package:my_flutter_image_searching_app_cleanarch/domain/model/photo/photo_model.dart';

part 'detail_state.freezed.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(true) bool isLoading,
    @Default(0) int userId,
    @Default('') String userName,
    PhotoModel? photoModel,
    LikeModel? likeModel,
    @Default(0) int likeCount,
    @Default([]) List<CommentModel> commentList,
    @Default([]) List<Map<String, dynamic>> recommendImageList,
  }) = _DetailState;
}
