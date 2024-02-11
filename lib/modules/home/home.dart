import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(53, 194, 6, 0.5),
          leading: const Icon(Icons.menu),
          title: const Text('Eid Mubark'),
          actions: [
            // const IconButton(onPressed: onNotification, icon: Text('hi')),
            IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  // print('hi');
                })
          ],
        ),
        // HEADLINE: stack
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(20.0)),
                ),
                // BoxDecoration(borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const Image(
                      image: NetworkImage(
                          'https://quotesove.com/wp-content/uploads/2023/04/eid-ul-fitr-mubarak-6.webp'),
                    ),
                    Container(
                      width: 200.0,
                      padding:
                          const EdgeInsetsDirectional.symmetric(vertical: 10.0),
                      // padding: const EdgeInsetsDirectional.only(top: 10.0),
                      color: Colors.black.withOpacity(.5),
                      child: const Text(
                        'Eid Mubark',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )

        // HEADLINE: Scroll
        // body: SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Container(
        //     width: double.infinity,
        //     child: Row(
        //       children: [
        //         Text(
        //           'first',
        //           style: TextStyle(fontSize: 30.0),
        //         ),
        //         Text(
        //           '2',
        //           style: TextStyle(fontSize: 30.0),
        //         ),
        //         Text(
        //           '3',
        //           style: TextStyle(fontSize: 30.0),
        //         ),
        //         Text(
        //           '4',
        //           style: TextStyle(fontSize: 30.0),
        //         ),
        //         Text(
        //           'first',
        //           style: TextStyle(fontSize: 30.0),
        //         ),
        //         Text(
        //           'first',
        //           style: TextStyle(fontSize: 30.0),
        //         )
        //       ],
        //     ),
        //   ),
        // )

        // HEADLINE: Row
        // body: Row(
        //   children: [
        //     Expanded(
        //       child: Container(
        //         color: Colors.blue,
        //         child: Text(
        //           'First',
        //           style: TextStyle(
        //             fontSize: 20.0,
        //             color: Colors.white,
        //           ),
        //         ),
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.red,
        //         child: Text(
        //           'secund',
        //           style: TextStyle(
        //             fontSize: 20.0,
        //             color: Colors.white,
        //           ),
        //         ),
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.green,
        //         child: Text(
        //           'third',
        //           style: TextStyle(
        //             fontSize: 20.0,
        //             color: Colors.white,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // )

        // HEADLINE: Column
        // body: Container(
        //   width: double.infinity,
        //   child: Column(
        //     mainAxisSize: MainAxisSize.max,
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Expanded(
        //         flex: 1,
        //         child: Container(
        //           color: Colors.blue,
        //           child: const Text(
        //             'first text',
        //             style: TextStyle(color: Colors.white, fontSize: 30.0),
        //           ),
        //         ),
        //       ),
        //       const Expanded(
        //         child: Text(
        //           'first text',
        //           style: TextStyle(
        //             color: Colors.red,
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        );
  }
}

void onNotification() {
  // print('notification clicked');
}
