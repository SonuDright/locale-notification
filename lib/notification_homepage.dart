import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class HomePageLocaleNotification extends StatefulWidget {
  const HomePageLocaleNotification({super.key});

  @override
  State<HomePageLocaleNotification> createState() => _HomePageLocaleNotificationState();
}

class _HomePageLocaleNotificationState extends State<HomePageLocaleNotification> {

late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  }


  Future<void> showNotification()async{
 var flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
 flutterLocalNotificationsPlugin.initialize(InitializationSettings(
   android: AndroidInitializationSettings("@mipmap/ic_launcher")
 ));

 flutterLocalNotificationsPlugin.show(3, "Name", "Sonu Dright", NotificationDetails(
   android: AndroidNotificationDetails("channelId","channelName")
 ));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              showNotification();

            }, child: Text("Show Notification"))
          ],
        ),
      ),

    );
  }
}
