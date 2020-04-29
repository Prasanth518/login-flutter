import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            title: Text(
              'Back',
            ),
            leading: Icon(
              Icons.arrow_back_ios,
              size: 15.0,
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/back.png',
                      ),
                      fit: BoxFit.fitWidth)),
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 6.3 / 8,
                child: DraggableScrollableSheet(
                  builder: (
                    BuildContext context,
                    ScrollController scrollController,
                  ) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          ),
                          color: Colors.white),
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return Container();
                        },
                      ),
                    );
                  },
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                  color: Color(0xff353759),
                ),
              ),
            ),
            Positioned(
                top: 60.0,
                left: 140.0,
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'assets/images/boy.png',
                    fit: BoxFit.fitHeight,
                    height: 65.0,
                  ),
                )),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome Back'),
                  Text('Lizzie'),
                  FloatingActionButton.extended(
                  
                      onPressed: null, label: Text('Log in')),
                  FloatingActionButton.extended(
                      onPressed: null, label: Text('Another Account'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
