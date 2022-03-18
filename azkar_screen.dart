import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter = 0;
  String _content = 'الحمدلله';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ++_counter;
            });
          },
          splashColor: Colors.white,
          backgroundColor: Colors.orange.shade900,
          child: const Icon(Icons.add),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            ('Azkar App'),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about_screen', arguments: {
                    'message': 'AZKAR APP',
                  });
                },
                icon: const Icon(Icons.info)),
            PopupMenuButton<String>(
                icon: const Icon(Icons.more_horiz),
                onSelected: (value) {
                  if (value != _content) {
                    setState(() {
                      _content = value;
                      _counter = 0;
                    });
                  }
                },
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      child: Text('الحمدلله'),
                      value: 'الحمدلله',
                    ),
                    const PopupMenuItem(
                      child: Text('أستغفر الله'),
                      value: 'أستغفر الله',
                    ),
                    const PopupMenuItem(
                      child: Text('الله اكبر'),
                      value: 'الله اكبر',
                    ),
                  ];
                }),
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.teal.shade700,
            Colors.teal.shade100,
          ])),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // const CircleAvatar(
              //   backgroundImage: AssetImage('/azkar2.jpg'),
              //   radius: 50,
              //   backgroundColor: Colors.white,
              // ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn02.paltoday.ps/ar/thumb/1100x700/uploads/images/o4fmN.jpg'),
                  radius: 45,
                ),
              // Container(
              //   width: 70,
              //   height: 70,
              //   decoration: const BoxDecoration(
              //     color: Colors.white,
              //     shape: BoxShape.circle,
              //   ),
              //   child: Image.asset('azkar.jpg'),
              // ),
              Card(
                margin: const EdgeInsetsDirectional.only(top: 20,bottom: 20),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _content,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Changa',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      child: Text(
                        _counter.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Changa',
                        ),
                      ),
                      color: Colors.tealAccent,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          ++_counter;
                        });
                      },
                      child: Text(
                        'تسبيح',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Changa',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal.shade800,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      child: Text(
                        'إعادة',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Changa',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal.shade800,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
