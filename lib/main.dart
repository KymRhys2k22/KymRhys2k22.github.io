import 'package:flutter/material.dart';
import 'member.dart';
import 'activity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'PRAG', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.amber,
          leading: Image.asset('assets/prag.png'),
          titleSpacing: 2,
          title: Text(
            'PRAG',
            style: TextStyle(
              fontFamily: 'Audiowide',
              fontSize: 40,
              color: Colors.red,
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.amber],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              Text(
                'OFFICERS: ',
                style: TextStyle(fontFamily: 'Audiowide', fontSize: 30),
              ),
              //FIRST BOX
              Container(
                padding: EdgeInsets.all(10),
                height: 180,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 10,
                        offset: Offset(0.0, 10.0),
                      ),
                    ],
                    color: Colors.yellow.shade800,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: prag.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        children: [
                          Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(prag[index].image),
                            ),
                          ),
                          Text(
                            prag[index].label,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Audiowide',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'ACTIVITY:',
                style: TextStyle(fontFamily: 'Audiowide', fontSize: 30),
              ),
              //SECOND BOX
              Container(
                padding: EdgeInsets.all(20),
                height: 495,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 10,
                        offset: Offset(0.0, 10.0),
                      ),
                    ],
                    color: Colors.yellow.shade700,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: ListView.builder(
                  itemCount: act.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Image.asset(
                          act[index].actimg,
                          fit: BoxFit.cover,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
