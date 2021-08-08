import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tourist_app/widgets/edgeroundbutton.dart';
import 'package:tourist_app/widgets/passwordinput.dart';
import 'package:tourist_app/widgets/textinput.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class LoginGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container( decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/tourist3.png'),
            fit: BoxFit.cover,
          ),
        ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Center(
              child:Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 500,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white38,
                  boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 11.0,
                    offset: Offset(0, 2),
                  ),
                  ],
                ),

                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: [
                        Container(
                          height: 100,
                          child: Center(
                            child: Text(
                              'Login As a Guide',
                              // style: kHeading,
                            ),
                          ),
                        ),
                        TextInput(
                          icon: FontAwesomeIcons.solidEnvelope,
                          hint: 'Email',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                        ),
                        PasswordInput(
                          icon: FontAwesomeIcons.lock,
                          hint: 'Password',
                          inputAction: TextInputAction.done,
                        ),
                        Text(
                          'Forgot Password?',
                          //      style: TextStyle(
                          //        color: Colors.blue,
                          //      ),
                          // //     style: kBodyText,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        RoundedButton(
                          buttonText: 'Login',
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                bottom:
                                BorderSide(color: Colors.white, width: 1),
                              )),
                          child: Text(
                            'Create New Account',
                            // style: TextStyle(
                            //   color: Colors.blue,
                            // ),
                            //     style: kBodyText,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}