import 'package:get_it/get_it.dart';
import 'package:surfing_spots/main_repository.dart';

final GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerFactory<MainRepository>(() => FakeMainRepository());
}