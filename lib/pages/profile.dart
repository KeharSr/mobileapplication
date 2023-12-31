// import 'package:flutter/material.dart';
//
// class MyProfile extends StatefulWidget {
//   const MyProfile({super.key});
//
//   @override
//   State<MyProfile> createState() => _MyProfileState();
// }
//
// class _MyProfileState extends State<MyProfile> {
//   @override
//   Widget build(BuildContext context) {
//     final _width = MediaQuery.of(context).size.width;
//     final _height = MediaQuery.of(context).size.height;
//
//     return new Container(
//       child: new Stack(
//         children: <Widget>[
//           new Container(
//             height: _height / 1,
//             decoration: new BoxDecoration(
//               color: Colors.purple,
//               borderRadius: new BorderRadius.only(
//                 bottomLeft: const Radius.circular(40.0),
//                 bottomRight: const Radius.circular(40.0),
//               ),
//             ),
//           ),
//           new Scaffold(
//             backgroundColor: Colors.transparent,
//             body: new Container(
//               child: new Stack(
//                 children: <Widget>[
//                   new Align(
//                     alignment: Alignment.center,
//                     child: new Padding(
//                       padding: new EdgeInsets.only(top: _height / 15),
//                       child: new Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           new CircleAvatar(
//                             backgroundImage:
//                                 new AssetImage('assets/images/kehar.png'),
//                             radius: _height / 10,
//                           ),
//                           new SizedBox(
//                             height: _height / 30,
//                           ),
//                           new Text(
//                             'Kehar Ojha',
//                             style: new TextStyle(
//                                 fontSize: 18.0,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   new Padding(
//                     padding: new EdgeInsets.only(top: _height / 2.2),
//                     child: new Container(
//                       color: Colors.white,
//                     ),
//                   ),
//                   new Padding(
//                     padding: new EdgeInsets.only(
//                         top: _height / 2.6,
//                         left: _width / 20,
//                         right: _width / 20),
//                     child: new Column(
//                       children: <Widget>[
//                         new Container(
//                           decoration: new BoxDecoration(
//                               color: Colors.white,
//                               boxShadow: [
//                                 new BoxShadow(
//                                     color: Colors.black45,
//                                     blurRadius: 2.0,
//                                     offset: new Offset(0.0, 2.0))
//                               ]),
//                           child: new Padding(
//                             padding: new EdgeInsets.all(_width / 20),
//                             child: new Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: <Widget>[
//                                   headerChild('Bookmarks', 10),
//                                 ]),
//                           ),
//                         ),
//                         new Padding(
//                           padding: new EdgeInsets.only(top: _height / 20),
//                           child: new Column(
//                             children: <Widget>[
//                               infoChild(
//                                   _width, Icons.email, 'keharojha56@gmail.com'),
//                               infoChild(_width, Icons.call, '+977-9843712332'),
//                               infoChild(
//                                   _width, Icons.group_add, 'Add to group'),
//                               infoChild(_width, Icons.chat_bubble,
//                                   'Show all comments'),
//                               new Padding(
//                                 padding: new EdgeInsets.only(top: _height / 30),
//                                 child: new Container(
//                                   width: _width / 3,
//                                   height: _height / 20,
//                                   decoration: new BoxDecoration(
//                                       color: Colors.purple,
//                                       borderRadius: new BorderRadius.all(
//                                           new Radius.circular(_height / 40)),
//                                       boxShadow: [
//                                         new BoxShadow(
//                                             color: Colors.black87,
//                                             blurRadius: 2.0,
//                                             offset: new Offset(0.0, 1.0))
//                                       ]),
//                                   child: Center(
//                                     child: InkWell(
//                                       onTap: () {
//                                         Navigator.of(context)
//                                             .pushNamed('/home');
//                                       },
//                                       child: Text('HOME',
//                                           style: new TextStyle(
//                                               fontSize: 12.0,
//                                               color: Colors.white,
//                                               fontWeight: FontWeight.bold)),
//                                     ),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget headerChild(String header, int value) => new Expanded(
//           child: new Column(
//         children: <Widget>[
//           new Text(header),
//           new SizedBox(
//             height: 8.0,
//           ),
//           new Text(
//             '$value',
//             style: new TextStyle(
//                 fontSize: 14.0,
//                 color: Colors.purple,
//                 fontWeight: FontWeight.bold),
//           )
//         ],
//       ));
//
//   Widget infoChild(double width, IconData icon, data) => new Padding(
//         padding: new EdgeInsets.only(bottom: 8.0),
//         child: new InkWell(
//           child: new Row(
//             children: <Widget>[
//               new SizedBox(
//                 width: width / 10,
//               ),
//               new Icon(
//                 icon,
//                 color: Colors.purple,
//                 size: 36.0,
//               ),
//               new SizedBox(
//                 width: width / 20,
//               ),
//               new Text(data)
//             ],
//           ),
//           onTap: () {
//             print('Info Object selected');
//           },
//         ),
//       );
// }


import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: _height / 6),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/kehar.png'),
                    radius: _height / 10,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Kehar Ojha',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: _height / 20),
                  Column(
                    children: <Widget>[
                      infoChild(_width, Icons.email, 'keharojha56@gmail.com'),
                      infoChild(_width, Icons.call, '+977-9843712332'),
                      infoChild(_width, Icons.group_add, 'Add to group'),
                      infoChild(_width, Icons.chat_bubble, 'Show all comments'),
                      SizedBox(height: _height / 30),
                      Container(
                        width: _width / 3,
                        height: _height / 18,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(_height / 36),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black87,
                              blurRadius: 2.0,
                              offset: Offset(0.0, 1.0),
                            ),
                          ],
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/home');
                          },
                          child: Center(
                            child: Text(
                              'HOME',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget infoChild(double width, IconData icon, data) => Padding(
    padding: EdgeInsets.only(bottom: 8.0),
    child: InkWell(
      child: Row(
        children: <Widget>[
          SizedBox(width: width / 10),
          Icon(
            icon,
            color: Colors.purple,
            size: 36.0,
          ),
          SizedBox(width: width / 20),
          Text(
            data,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          )
        ],
      ),
      onTap: () {
        print('Info Object selected');
      },
    ),
  );
}
