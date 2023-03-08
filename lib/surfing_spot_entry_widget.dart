import 'package:flutter/widgets.dart';
import 'package:surfing_spots/surfing_spot.dart';

class SurfingSpotEntryWidget extends StatelessWidget {
  final SurfingSpot surfingSpot;

  const SurfingSpotEntryWidget(this.surfingSpot);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(surfingSpot.name),
        Text(surfingSpot.description)
      ],
    );
  }
}
