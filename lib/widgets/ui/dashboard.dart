import 'package:flutter/material.dart';
import 'package:gentelella_flutter/widgets/screens/principal.dart';
import 'package:gentelella_flutter/widgets/screens/add_users.dart';
//import 'package:gentelella_flutter/widgets/ui/sidebar.dart';

class DashboardWidget extends StatefulWidget {
  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  int _currentPage = 0;
  final List<Widget> _pages = [
    HomePage(),
    ReceiptForm(),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
            color: Color(0xff2A3F54),
            width: 231,
            child:
        Drawer(
          child:
          Container(
            color: Color(0xff2A3F54),
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                //padding: EdgeInsets.zero,
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          height: 130,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.network(
                            "https://colorlib.com/polygon/gentelella/images/img.jpg",
                            width: 56,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('Welcolme',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xffBAB8B8))),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    height: 48,
                                  ),
                                  Text(
                                    'John Doe',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffECF0F1)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xff2A3F54),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Color(0xffE7E7E7),),
                title: Text('Home', style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,),),
                onTap: () {
//                      HomePage();
                  setState(() {
                    _currentPage = 0;
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_add, color: Color(0xffE7E7E7)),
                title: Text('Add users',style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,) ),
                onTap: () {
//                      HomePage();
                  setState(() {
                    _currentPage = 1;
                  });
                },
              ),
            ],
          ),
        ),
        ),
    ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading:
                  MediaQuery.of(context).size.width < 600,
              title: Text('Gentelella Dashboard Template'),
              actions: <Widget>[IconButton(
            icon: const Icon(Icons.exit_to_app, color: Color(0xff2A3F54),),
            tooltip: 'Logout',
            onPressed: () {
             // scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),],
            ),
            body: _pages[_currentPage],
          ),
        ),
      ],
    );
    /* return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Gentelella Admin'),
        ),
        body: Container(
          child: Row(
            children: <Widget>[
              Drawer(
                child: ListView(
                  children: <Widget>[
                    DrawerHeader(
                      //padding: EdgeInsets.zero,
                      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                      child:
                      Column(
                        children: <Widget>[
                          
                          Row(
                            children: <Widget>[
                              SizedBox(height: 34,),
                               ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.network(
                                          "https://colorlib.com/polygon/gentelella/images/img.jpg",
                                          width: 56,
                                        ),
                              ),
SizedBox(width: 20,),
                              Flexible(
                                child: Stack(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text('Welcolme', style: TextStyle(fontSize: 13, color: Color(0xffBAB8B8))),
                                        
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[SizedBox(height: 48,),
                                Text('John Doe', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffECF0F1)),),],
                                    )
                                     
                                    
                                  ],
                                ),
                              )
                              
                              
                              
                            ],
                          ),
                         
                        ],

                      ) ,
                      decoration: BoxDecoration(
                        color: Color(0xff2A3F54),
                      ),
                    ),
                    ListTile(
                      title: Text('Principal'),
                      onTap: () {
//                      HomePage();
                        setState(() {
                          _currentPage = 0;
                        });
                      },
                    ),

                    ListTile(
                      title: Text('Add receipt'),
                      onTap: () {
//                      HomePage();
                        setState(() {
                          _currentPage = 1;
                        });
                      },
                    ),
                  ],
                ),
              ),
              _pages[_currentPage],
              //HomePage(),
            ],
          ),
        ),
      ),
    );
 */
  }
}
