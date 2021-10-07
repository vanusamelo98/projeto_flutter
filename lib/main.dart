import 'package:flutter/material.dart';
import 'package:projeto_flutter/app/injection.dart';

import 'app/my_app.dart';

void main() {
  setupInjection();
  runApp(MyApp());
}