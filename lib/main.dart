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
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
            child: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              title: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 10.0,
                    color: Colors.black,
                  ),
                  SizedBox(width: 3.0),
                  Text(
                    'Back',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(100.0)),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/back.png',
                    ),
                    fit: BoxFit.fitWidth),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 6.3 / 8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                  color: Color(0xff353759),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 0),
                      child: Text(
                        'Welcome back',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w200,
                            fontSize: 12.0,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Lizzie',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: TextField(
                        decoration: InputDecoration(
                          suffix:
                              GestureDetector(child: Text('Forgot password?')),
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 12.0),
                          hintText: 'Password',
                        ),
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 35.0),
                    FloatingActionButton.extended(
                        backgroundColor: Colors.orange,
                        onPressed: null,
                        label: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 90.0, vertical: 20.0),
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    SizedBox(height: 20),
                    FloatingActionButton.extended(
                        elevation: 0.0,
                        backgroundColor:
                            Color(0xff353759).withBlue(125).withOpacity(0.6),
                        onPressed: null,
                        label: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 50.0),
                          child: Text(
                            'Another account',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 12.0),
                          ),
                        ))
                  ],
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
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.15,
              minChildSize: 0.1,
              maxChildSize: 0.82,
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
                      return Container(
                          child: Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: () {},
                          ),
                          Text('Sign Up')
                        ],
                      ));
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
