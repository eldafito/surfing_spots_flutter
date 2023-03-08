import 'package:flutter/material.dart';
import 'package:surfing_spots/surfing_spot.dart';

class SurfingSpotEntryWidget extends StatelessWidget {
  final SurfingSpot surfingSpot;

  const SurfingSpotEntryWidget(this.surfingSpot);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                image: DecorationImage(
                    image: NetworkImage(surfingSpot.imageUrl),
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                    colorFilter: ColorFilter.mode(const Color.fromARGB(255, 4, 3, 3).withOpacity(0.3), BlendMode.darken))),
            child: SizedBox(
                height: 150,
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(surfingSpot.name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      shadows: [
                                        Shadow(
                                            color:
                                                Color.fromARGB(255, 60, 60, 60),
                                            blurRadius: 10.0)
                                      ])),
                              const SizedBox(height: 10),
                              Text(surfingSpot.description,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      shadows: [
                                        Shadow(
                                            color:
                                                Color.fromARGB(255, 60, 60, 60),
                                            blurRadius: 10.0)
                                      ]))
                            ]))))));
  }
}
