import 'package:flutter/foundation.dart';
import 'package:surfing_spots/main_repository.dart';
import 'package:surfing_spots/surfing_spot.dart';

class MainViewModel extends ChangeNotifier {
  MainViewModel({
    required this.repository,
  });

  final MainRepository repository;

  List<SurfingSpot> surfingSpotList = List.empty(growable: true);

  Future<void> fetch() async {
    surfingSpotList.clear();
    notifyListeners();
    List<SurfingSpot> fetched = await repository.fetch();
    surfingSpotList.addAll(fetched);
    notifyListeners();
  }

}
