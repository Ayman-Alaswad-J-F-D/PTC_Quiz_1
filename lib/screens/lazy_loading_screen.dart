import 'package:flutter/material.dart';
import 'package:template_app/question2/lazy_loading/languages.dart';
import 'package:template_app/question2/lazy_loading/venues.dart';

import '../question2/lazy_loading/categories.dart';
import '../widget/item_builder.dart';

class LazyLoadingScreen extends StatefulWidget {
  const LazyLoadingScreen({Key? key}) : super(key: key);

  @override
  State<LazyLoadingScreen> createState() => _LazyLoadingScreenState();
}

class _LazyLoadingScreenState extends State<LazyLoadingScreen> {
  List data = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                child: const Text('Get Categories'),
                onPressed: categoriesLazyLoading,
              ),
              TextButton(
                child: const Text('Get Venues'),
                onPressed: venuesLazyLoading,
              ),
              TextButton(
                child: const Text('Get languages'),
                onPressed: languagesLazyLoading,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) => SingleChildScrollView(
              child: SizedBox(
                height: 70,
                child: ItemBuilder(label: '${data[index]}', onTap: null),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void categoriesLazyLoading() async {
    showLoading();
    data = await Categories.data;
    back();
    setState(() {});
    // log('Load Categories: ${await Categories.data}');
  }

  void venuesLazyLoading() async {
    showLoading();
    data = await Venues.data;
    back();
    setState(() {});
    // log('Load Venues: ${await Venues.data}');
  }

  void languagesLazyLoading() async {
    showLoading();
    data = await Languages.data;
    back();
    setState(() {});
    // log('Load Languages: ${await Languages.data}');
  }

  void showLoading() {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void back() => Navigator.pop(context);
}
