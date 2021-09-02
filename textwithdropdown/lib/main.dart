import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              width: Get.context!.width * 0.7,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  filled: true,
                  fillColor: Colors.grey[300]!,
                  hintText: "Document Number (*)",
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              width: Get.context!.width * 0.3,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  filled: true,
                  fillColor: Colors.grey[300]!,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
                //value: _ratingController,
                items: ['EUR', 'Rupees', 'Dollar', 'ETC', 'EYAN']
                    .map(
                      (label) => DropdownMenuItem(
                        child: Text(label.toString()),
                        value: label,
                      ),
                    )
                    .toList(),
                hint: const Text('EUR'),
                onChanged: (value) {
                  //   setState(() {
                  //     _ratingController = value;
                  //   });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
