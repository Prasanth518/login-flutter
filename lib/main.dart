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

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
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
                          suffix: GestureDetector(
                              child: Text(
                            'Forgot password?',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white.withOpacity(0.5)),
                          )),
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
                        backgroundColor: Color(0xff2E2F4D),
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
            GestureDetector(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: DraggableScrollableSheet(
                maxChildSize: 0.82,
                minChildSize: 0.15,
                initialChildSize: 0.15,
                builder: (context, scrollController) {
                  return Container(
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Visibility(
                        visible: isVisible,
                        child: Column(
                          children: [
                            Icon(
                              Icons.keyboard_arrow_up,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15.0,
                                        color: Color(0xff353759),
                                      ),
                                    ),
                            ),
                          ],
                        ),
                        replacement: Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.minimize,
                                size: 25.0,
                                color: Color(0xff353759),
                              ),
                              onPressed: null,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50.0, vertical: 15.0),
                                  child: Text(
                                    'Create \naccount',
                                    style: TextStyle(
                                        color: Color(0xff353759),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15.0),
                                  ),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  suffix: Icon(
                                    Icons.perm_identity,
                                  ),
                                  hintStyle: TextStyle(
                                      color: Color(0xff353759), fontSize: 12.0),
                                  hintText: 'Name',
                                ),
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  suffix: Icon(
                                    Icons.alternate_email,
                                  ),
                                  hintStyle: TextStyle(
                                      color: Color(0xff353759), fontSize: 12.0),
                                  hintText: 'E-mail',
                                ),
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  suffix: Icon(
                                    Icons.vpn_key,
                                  ),
                                  hintStyle: TextStyle(
                                      color: Color(0xff353759), fontSize: 12.0),
                                  hintText: 'Password',
                                ),
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                                obscureText: true,
                              ),
                            ),
                            SizedBox(height: 70.0),
                            FloatingActionButton.extended(
                                backgroundColor: Color(0xff353759),
                                onPressed: null,
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 90.0, vertical: 20.0),
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0)),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
