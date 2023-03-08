import 'package:surfing_spots/surfing_spot.dart';

abstract class MainRepository {
  Future<List<SurfingSpot>> fetch();
}

class FakeMainRepository extends MainRepository {
  @override
  fetch() async {
    await Future.delayed(const Duration(seconds: 0));
    var list = [
      SurfingSpot("Cuba", "Desc", "https://www.info-turismo.it/wp-content/uploads/2021/01/shutterstock_1020405811.jpg"),
      SurfingSpot("Los Angeles", "Desc", "https://www.esl.it/sites/default/files/styles/image_gallery/public/city/esl-languages-usa-los-angeles-hero.jpg?itok=GNFHWcI7"),
      SurfingSpot("Miami", "Desc", "https://content.r9cdn.net/rimg/dimg/17/74/0ca6e469-city-30651-1632b88f203.jpg?width=1750&height=1000&xhint=2635&yhint=1507&crop=true"),
      SurfingSpot("Porto", "Desc", "https://d2bgjx2gb489de.cloudfront.net/gbb-blogs/wp-content/uploads/2020/02/09192305/La-vista-panoramica-sul-Centro-storico-di-Porto.jpg"),
      SurfingSpot("Riccione", "Desc", "https://www.dovedormire.info/wp-content/uploads/sites/119/riccione.jpg"),
      SurfingSpot("Midgar", "Desc", "https://www.everyeye.it/public/immagini/11042020/midgar.jpg"),
      SurfingSpot("Ortona", "Desc", "https://turismo.abruzzo.it/wp-content/uploads/sites/118/ortona-hd.jpg")
    ];
    list.shuffle();
    return list;
  }
}