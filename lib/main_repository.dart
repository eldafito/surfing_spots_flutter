import 'package:surfing_spots/surfing_spot.dart';

class MainRepository {

  Stream<List<SurfingSpot>> get surfingSpots async* {
    yield List.generate(8, (index) =>
        SurfingSpot("Title $index", "Description $index")
    );
  }

}
