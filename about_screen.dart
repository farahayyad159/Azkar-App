import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String message='message';
    ModalRoute? modalRoute= ModalRoute.of(context);
    if(modalRoute != null){
    Map<String,dynamic> map= modalRoute.settings.arguments as Map<String,dynamic>;
      if(map.containsKey(message)) {
        message=map['message'];
      }
    }

    return Scaffold(
    appBar: AppBar(
      title: Text('About',
      style: TextStyle(
      fontSize: 20,
      ),
      ),
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
      backgroundColor: Colors.teal.shade400,
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
        Text(message,
          style: const TextStyle(
            fontSize: 35,
            fontFamily: 'Changa',
            color: Colors.teal,
          ),
        ),
        Text('Remembrance application application for iPhone and iPad, easy to use, includes the important supplications and supplications from the book and the Sunnah - morning remembrances - evening remembrances - supplications at bedtime - supplications from the Holy Qur’an - legal ruqyah from the Qur’an and Sunnah - from the supplication of the Messenger, may God’s prayers and peace be upon him Prayer times in your city and the direction of the qiblah.',
        style: TextStyle(
          wordSpacing: 1.5,
          letterSpacing: 1.5,
          fontSize: 20,
          //fontFamily: 'Changa',
          color: Colors.black,
        ),
        )
      ],
    ),

    );
  }
}
