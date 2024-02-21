import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_in/screen/home/provider/provider.dart';
import 'package:log_in/screen/home/view/home_screen.dart';
import 'package:log_in/utils/shared_helper.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider.value(value: LogInProvider()),
    ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/":(context) => const HomeScreen()
          },
        )),
  );
}