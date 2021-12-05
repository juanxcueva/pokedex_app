import 'package:flutter/material.dart';

import 'app/my_app.dart';
import 'dependency_injector.dart';

void main(){
  injectDependencies();
  runApp(const MyApp());
} 

