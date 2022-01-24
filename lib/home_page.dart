import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  var info2 = '';

  @override
  void initState() {
    super.initState();
    getInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Device Info Plus'),),
      body: Center(
        child: Text(info2),
      ),
    );
  }

  void getInfo() async{
    var info = await deviceInfo.androidInfo;
    info2 = info.device!;
    setState(() {

    });
  }
}
