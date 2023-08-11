import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import '../../domain/repositories/video_post_repository.dart';

class VideoPostRespositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videoPostDatasource;

  VideoPostRespositoryImpl({required this.videoPostDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(int userId) {
    // TODO: implement getFavoriteVideoByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) {
    return videoPostDatasource.getTrendingVideoByPage(page);
  }
}
