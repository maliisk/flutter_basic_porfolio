import 'package:akademi_ek_ders_1/widgets/jobs_item.dart';
import 'package:akademi_ek_ders_1/widgets/my_lovely_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher_windows/url_launcher_windows.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/sas.jpeg"),
                    ),
                  ),
                  const SizedBox(width: 40),
                  const Expanded(
                    child: Text(
                      'Muhammed Ali IŞIK',
                      maxLines: 2,
                      style: TextStyle(
                          // backgroundColor: Colors.blue,
                          //  decoration: TextDecoration.underline,
                          fontSize: 22,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              const Text(
                'Hakkımda:',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Computer Engineering \n\nWeb Developer \n\nMobile Developer',
              ),
              SizedBox(
                height: 20,
              ),
              ListView(shrinkWrap: true, children: [
                JobsItem(
                  company: "IEEE Fırat",
                  desc: "IEEE Fırat resmi sitesi yapımı",
                  title: "WEB Developer",
                ),
                JobsItem(
                  company: "Oyun Ve Uygulama Akademisi",
                  desc: "Flutter ile mobil uygulama geliştrime",
                  title: "Mobil Developer",
                ),
                JobsItem(
                  company: "Google",
                  desc: "Proje yöneticiliği yapıldı",
                  title: "Project Management",
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyLovelyButton(
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {});
                    },
                    text: "Mail Me",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
