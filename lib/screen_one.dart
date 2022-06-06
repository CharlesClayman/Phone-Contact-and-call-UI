import 'package:design_one/contact.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  final Contact? contact;
  final String? number;

  const ScreenOne.withContact({required this.contact, Key? key, this.number})
      : super(key: key);
  const ScreenOne.withNumber({required this.number, Key? key, this.contact})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(88, 64, 114, 1),
                  border: Border.all(
                      width: 1, color: Color.fromRGBO(88, 64, 114, 1)),
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                right: 20,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(102, 66, 114, 1),
                    border: Border.all(
                        width: 1, color: Color.fromRGBO(102, 66, 114, 1)),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 20,
                right: 20,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(112, 69, 114, 1),
                    border: Border.all(
                        width: 1, color: Color.fromRGBO(112, 69, 114, 1)),
                  ),
                ),
              ),
              Positioned(
                top: 130,
                left: 20,
                right: 20,
                child: Container(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(
                      backgroundImage: AssetImage(contact?.photoUrl ?? '')),
                ),
              ),
            ]),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                contact?.name ?? number ?? '',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: contact == null
                  ? const SizedBox(
                      height: 0,
                    )
                  : Text(contact?.number ?? '',
                      style: const TextStyle(
                          fontSize: 15, color: Color.fromRGBO(92, 89, 141, 1))),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: const Text('Mobile',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromRGBO(92, 89, 141, 1))),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Reminder icon with text description
                  Column(
                    children: [
                      //Reminder icon
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color.fromRGBO(92, 89, 141, 1),
                                width: 2)),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Icon(Icons.access_time,
                            color: Color.fromRGBO(92, 89, 141, 1)),
                      ),
                      //Text description
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: const Text(
                          'Reminder',
                          style:
                              TextStyle(color: Color.fromRGBO(92, 89, 141, 1)),
                        ),
                      ),
                    ],
                  ),
                  //Message icon with text description
                  Column(
                    children: [
                      //Message icon
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color.fromRGBO(92, 89, 141, 1),
                                width: 2)),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Icon(Icons.mail_outline,
                            color: Color.fromRGBO(92, 89, 141, 1)),
                      ),
                      //Text description
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: const Text(
                          'Message',
                          style:
                              TextStyle(color: Color.fromRGBO(92, 89, 141, 1)),
                        ),
                      ),
                    ],
                  ),
                  //Decline call icon with text description
                  Column(
                    children: [
                      //Decline call icon
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.red.withOpacity(0.3), width: 2)),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.call,
                            color: Colors.red.withOpacity(0.5)),
                      ),
                      //Text description
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: const Text(
                          'Decline',
                          style:
                              TextStyle(color: Color.fromRGBO(92, 89, 141, 1)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.only(left: 0, right: 5),
              width: 171,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color.fromRGBO(81, 198, 187, 0.2),
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(25), right: Radius.circular(25)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(81, 198, 187, 1),
                    ),
                    margin: const EdgeInsets.only(right: 10),
                    child: const Icon(Icons.call, color: Colors.white),
                  ),
                  const Text(
                    'Slide to unlock',
                    style: TextStyle(color: Color.fromRGBO(81, 198, 187, 1)),
                  ),
                ],
              ),
            ),
            // Flexible(child: Container())
          ],
        )),
      ),
      decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(94, 71, 127, 1),
                Color.fromRGBO(19, 26, 81, 1)
              ])),
    );
  }
}
