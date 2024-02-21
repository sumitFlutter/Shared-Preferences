import 'package:flutter/material.dart';
import 'package:log_in/screen/home/provider/provider.dart';
import 'package:log_in/utils/shared_helper.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Log in"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.name,
                controller: txtName,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: "Enter Your Name"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: txtEmail,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: "Enter Your Email"),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<LogInProvider>()
                            .store(txt1: txtName.text, txt2: txtEmail.text);
                        txtEmail.clear();
                        txtName.clear();
                      },
                      child: const Text("save")),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        txtName.text = (await showN())!;
                        txtEmail.text = (await showE())!;
                      },
                      child: const Text("Show"))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
