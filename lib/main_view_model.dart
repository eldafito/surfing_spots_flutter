import 'package:surfing_spots/main_repository.dart';
import 'package:surfing_spots/surfing_spot.dart';

class MediaViewModel {
  final MainRepository _repository = MainRepository();

  Stream<List<SurfingSpot>> get surfingSpots => _repository.surfingSpots;
}
