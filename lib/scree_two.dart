import 'package:design_one/contact.dart';
import 'package:design_one/screen_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenTwo extends StatefulWidget {
  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final TextEditingController _controller = TextEditingController();
  String inputValue = "";

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void myCallBack(dynamic num) {
    inputValue = inputValue + num.toString();
    setState(() {
      _controller.text = inputValue;
    });
  }

  void callWithContact(Contact contact) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: ((context) => ScreenOne.withContact(contact: contact))));
  }

  void callWithNumber() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: ((context) =>
                ScreenOne.withNumber(number: _controller.text))));
  }

  Widget keyItem({dynamic num, String? letters}) {
    return GridTile(
      child: InkWell(
        onTap: () => myCallBack(num),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                num.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Expanded(
              child: Text(letters!,
                  style: const TextStyle(
                    color: Color.fromRGBO(60, 59, 101, 1),
                    fontSize: 15,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  List<Contact> contacts() {
    List<Contact> contacts = [];
    contacts.add(const Contact(
        name: "Natasha Benson",
        number: "0558456790",
        photoUrl: "assets/abigail.jpg"));
    contacts.add(const Contact(
        name: "Charles Clayman",
        number: "0242343489",
        photoUrl: "assets/dp.jpg"));
    contacts.add(const Contact(
        name: "Betty Paintsil",
        number: "05700001234",
        photoUrl: "assets/betty.jpg"));
    contacts.add(const Contact(
        name: "Ben Lartey", number: "0568023990", photoUrl: "assets/ben.jpg"));

    return contacts;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _controller,
                style: const TextStyle(fontSize: 30, color: Colors.white),
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  filled: true,
                  contentPadding: const EdgeInsets.all(8),
                ),
              ),
              const Divider(
                thickness: 2,
                color: Color.fromRGBO(92, 89, 141, 1),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: contacts().length,
                      itemBuilder: (context, index) => ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage(contacts()[index].photoUrl),
                            ),
                            title: Text(
                              contacts()[index].name,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            subtitle: Text(
                              contacts()[index].number,
                              style: TextStyle(color: Colors.white),
                            ),
                            onTap: () => callWithContact(contacts()[index]),
                          ))),
              // Expanded(child: Container()),
              Container(
                  padding: const EdgeInsets.only(top: 20),
                  color: const Color.fromRGBO(21, 22, 70, 1),
                  child: Column(
                    children: [
                      GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 1,
                          crossAxisSpacing: 1,
                          childAspectRatio: 2,
                        ),
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        children: [
                          keyItem(num: 1, letters: ''),
                          keyItem(num: 2, letters: 'ABC'),
                          keyItem(num: 3, letters: 'DEF'),
                          keyItem(num: 4, letters: 'GHI'),
                          keyItem(num: 5, letters: 'JKL'),
                          keyItem(num: 6, letters: 'MNO'),
                          keyItem(num: 7, letters: 'PQRS'),
                          keyItem(num: 8, letters: 'TUV'),
                          keyItem(num: 9, letters: 'WXYZ'),
                          keyItem(num: '*', letters: ''),
                          keyItem(num: 0, letters: ''),
                          keyItem(num: '#', letters: ''),
                        ],
                      ),
                      Center(
                        child: InkWell(
                          onTap: callWithNumber,
                          child: Container(
                            width: 120,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: const Color.fromRGBO(81, 198, 187, 1),
                                borderRadius: BorderRadius.circular(25)),
                            child: const Icon(Icons.call, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
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
