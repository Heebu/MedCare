import 'package:flutter/material.dart';
import 'package:health_app/Doctors/upload_pescription.dart';

import '../Universal Reuseable Widgets/dimensions.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      // appBar: AppBar(
      //   backgroundColor: Colors.blue.shade900,
      //   leadingWidth: 30,
      //   title: Row(
      //     children: [
      //       Container(
      //         margin: EdgeInsets.only(right: 10),
      //         height: Dimensions.width50,
      //         width: Dimensions.height50,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //               image: AssetImage(
      //                 'assets/images/Idris.jpg',
      //               ),
      //               fit: BoxFit.fill),
      //           borderRadius: BorderRadius.circular(Dimensions.height10),
      //         ),
      //       ),
      //       Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           const Text('Dr Augustina Bunmi'),
      //           Text(
      //             'Active Now',
      //             style: TextStyle(fontSize: Dimensions.height6 * 2),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            top: 40,
            bottom: 10,
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      height: Dimensions.width60,
                      width: Dimensions.height60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/Idris.jpg',
                            ),
                            fit: BoxFit.fill),
                        borderRadius:
                            BorderRadius.circular(Dimensions.height10),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Dr Augustina Bunmi',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Active Now',
                            style: TextStyle(fontSize: Dimensions.height6 * 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 180,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: Dimensions.height70,
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext _) {
                            return const UploadPrescription();
                          }),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(10),
                        child: const Icon(
                          Icons.link_sharp,
                        ),
                      ),
                    ),
                    Container(
                      width: Dimensions.width25 * 10,
                      child: TextField(
                        style: TextStyle(),
                        decoration: InputDecoration(
                          hintText: 'Write here...',
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(10),
                        child: const Icon(
                          Icons.send_rounded,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
