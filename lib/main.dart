import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MyApp createState() => MyApp();
}

void main() => runApp(MainPage());

SnackBar snack(String message) {
  return new SnackBar(
      content: Text(message.toString()),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
      ));
}

class MyApp extends State<MainPage> {
  var accesibilityButton = Colors.black;
  var cronometerButton = Colors.black;
  var iphoneButton = Colors.black;
  var androidButton = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Mc Flutter'),
        ),
        body: SingleChildScrollView(
            child: Builder(
                builder: (context) => Column(
                      children: [
                        ListTile(
                            title: Text("Flutter McFlutter",
                                style: new TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold)),
                            subtitle: Text("Experienced App Developer",
                                style: new TextStyle(fontSize: 12)),
                            trailing: SizedBox(width: 130, child: Row())),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                    color: accesibilityButton,
                                    icon: Icon(
                                      Icons.accessibility,
                                      size: 35,
                                    ),
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snack(
                                              "Únete a un club con otras personas"));
                                      setState(() => {
                                            accesibilityButton == Colors.black
                                                ? accesibilityButton =
                                                    Colors.blue
                                                : accesibilityButton =
                                                    Colors.black
                                          });
                                    }),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    color: cronometerButton,
                                    icon: Icon(
                                      Icons.schedule,
                                      size: 35,
                                    ),
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snack(
                                              "Cuenta regresiva para el evento: 31 días"));
                                      setState(() => {
                                            cronometerButton == Colors.black
                                                ? cronometerButton = Colors.blue
                                                : cronometerButton =
                                                    Colors.black
                                          });
                                    }),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    color: iphoneButton,
                                    icon: Icon(
                                      Icons.phone_iphone,
                                      size: 35,
                                    ),
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snack(
                                              "Llama al número 4155550198"));
                                      setState(() => {
                                            iphoneButton == Colors.black
                                                ? iphoneButton = Colors.blue
                                                : iphoneButton = Colors.black
                                          });
                                    }),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    color: androidButton,
                                    icon: Icon(
                                      Icons.phone_android,
                                      size: 35,
                                    ),
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snack(
                                              "Llama al celular 3317865113"));
                                      setState(() => {
                                            androidButton == Colors.black
                                                ? androidButton = Colors.blue
                                                : androidButton = Colors.black
                                          });
                                    }),
                              ],
                            ),
                          ],
                        )
                      ],
                    ))),
      ),
    );
  }
}
