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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Surfing Spots"),
      ),
      body: SurfingSpotListWidget(viewModel.surfingSpotList)
    );
  }
}
