import 'package:flutter/widgets.dart';
import 'package:surfing_spots/surfing_spot.dart';
import 'package:surfing_spots/surfing_spot_entry_widget.dart';

class SurfingSpotListWidget extends StatelessWidget {
  final List<SurfingSpot> surfingSpotList;

  const SurfingSpotListWidget(this.surfingSpotList);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: surfingSpotList.map((e) =>
        SurfingSpotEntryWidget(e)
      ).toList()
    );
  }
}
