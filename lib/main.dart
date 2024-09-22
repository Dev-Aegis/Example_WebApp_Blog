import 'package:example_flutter_webapp_blog/view/HomeView.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    home: HomeView(),
  ));
}