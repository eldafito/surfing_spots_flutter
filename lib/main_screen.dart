import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surfing_spots/main_view_model.dart';
import 'package:surfing_spots/surfing_spot_list_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  late MainViewModel viewModel;

  @override
  void initState() {
    viewModel = Provider.of<MainViewModel>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.fetch();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Surfing Spots"),
        ),
        body: ChangeNotifierProvider<MainViewModel>(
            create: (BuildContext context) => viewModel,
            child: Consumer<MainViewModel>(builder: (context, vm, _) =>
              SurfingSpotListWidget(vm.surfingSpotList)
            )
        )
    );
  }
}
