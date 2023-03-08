import 'package:surfing_spots/surfing_spot.dart';

abstract class MainRepository {
  Future<List<SurfingSpot>> fetch();
}

class FakeMainRepository extends MainRepository {
  @override
  fetch() async {
    await Future.delayed(const Duration(seconds: 3));
    return List.generate(
        8, (index) => SurfingSpot("Title $index", "Description $index"));
  }
}
