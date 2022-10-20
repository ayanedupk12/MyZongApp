import 'package:flutter/material.dart';
import 'package:doctor/HomePage/assetsdata/AsseetsData.dart';
import 'package:doctor/HomePage/assetsdata/bigcontaineritems.dart';
import 'package:doctor/HomePage/assetsdata/containertwoshape.dart';
import 'widgets/Three_buttons.dart';
import 'widgets/advertise_button.dart';
import 'widgets/advertise_scroll.dart';
import 'widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  double expandcontainer = 140;
  String expandtext = 'Show More';

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: kkgreen,
        title: Text(
          'Hello, Raheel',
          style: kBH1,
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.refresh),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu_outlined),
          SizedBox(
            width: 20,
          ),
        ],
        leading: Icon(Icons.notifications),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          //first row
          SizedBox(
            height: 10,
          ),
          Header(),
          // dat show butons
          SizedBox(
            height: 20,
          ),
          ThreeButtons(),
          SizedBox(
            height: 20,
          ),
          //advertise button
          AdvertizeButton(),
          //advertise scroll
          SizedBox(
            height: 10,
          ),
          AdvertiseScroll(),
          //Container1
          SizedBox(
            height: 20,
          ),
          Container(
            width: size.width - 40,
            height: expandcontainer,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Center(
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Wrap(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: expandcontainer - 30,
                      child: Wrap(
                        children: [
                          BigContaineritem(
                            textc: 'Reward',
                            iconc: Icon(
                              Icons.wallet_giftcard_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                          BigContaineritem(
                            textc: 'Reward',
                            iconc: Icon(
                              Icons.wallet_giftcard_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                          BigContaineritem(
                            textc: 'Reward',
                            iconc: Icon(
                              Icons.wallet_giftcard_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                          BigContaineritem(
                            textc: 'Reward',
                            iconc: Icon(
                              Icons.wallet_giftcard_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                          BigContaineritem(
                            textc: 'Reward',
                            iconc: Icon(
                              Icons.wallet_giftcard_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                          BigContaineritem(
                            textc: 'Reward',
                            iconc: Icon(
                              Icons.wallet_giftcard_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                          BigContaineritem(
                            textc: 'Reward',
                            iconc: Icon(
                              Icons.wallet_giftcard_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                          BigContaineritem(
                            textc: 'Reward',
                            iconc: Icon(
                              Icons.wallet_giftcard_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                          BigContaineritem(
                            textc: 'Reward',
                            iconc: Icon(
                              Icons.wallet_giftcard_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                          BigContaineritem(
                            textc: 'Reward',
                            iconc: Icon(
                              Icons.wallet_giftcard_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                          BigContaineritem(
                            textc: 'Reward',
                            iconc: Icon(
                              Icons.wallet_giftcard_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {});
                          if (expandtext == 'Show More') {
                            expandcontainer = 400;
                            expandtext = 'Show Less';
                          } else if (expandtext == 'Show Less') {
                            expandcontainer = 130;
                            expandtext = 'Show More';
                          }
                        },
                        child: SizedBox(
                          width: double.infinity,
                          height: 35,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white,
                                      Colors.grey.withOpacity(0.4),
                                    ])),
                            child: Center(child: Text(expandtext)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          //Container 2
          SizedBox(
            height: 20,
          ),
          SizedBox(width: size.width-30,
            height: size.width -100,
            child: ListView(
              padding: EdgeInsets.all(20),

              scrollDirection: Axis.horizontal,
              children: [
                ContainerTwoItem(
                  iconone: Icon(
                    Icons.wifi,
                    color: Colors.green,
                    size: 25,
                  ),
                  icontwo: Icon(
                    Icons.chat,
                    color: Colors.green,
                    size: 25,
                  ),
                  packagename: 'Zong Club Bundle',
                  previousprice: '3000',
                  quantityone: '50',
                  quantitytwo: '1500',
                  quantitytypeone: 'Data',quantitytypetwo: 'SMS',
                  realprice: '2000',
                  subscribe: (){},
                  validity: '30 Days',
                  yctext: 'Flash sale',
                ),
                ContainerTwoItem(
                  iconone: Icon(
                    Icons.wifi,
                    color: Colors.green,
                    size: 25,
                  ),
                  icontwo: Icon(
                    Icons.chat,
                    color: Colors.green,
                    size: 25,
                  ),
                  packagename: 'Zong Club Bundle',
                  previousprice: '3000',
                  quantityone: '50',
                  quantitytwo: '1500',
                  quantitytypeone: 'Data',quantitytypetwo: 'SMS',
                  realprice: '2000',
                  subscribe: (){},
                  validity: '30 Days',
                  yctext: 'Flash sale',
                ),
                ContainerTwoItem(
                  iconone: Icon(
                    Icons.wifi,
                    color: Colors.green,
                    size: 25,
                  ),
                  icontwo: Icon(
                    Icons.chat,
                    color: Colors.green,
                    size: 25,
                  ),
                  packagename: 'Zong Club Bundle',
                  previousprice: '3000',
                  quantityone: '50',
                  quantitytwo: '1500',
                  quantitytypeone: 'Data',quantitytypetwo: 'SMS',
                  realprice: '2000',
                  subscribe: (){},
                  validity: '30 Days',
                  yctext: 'Flash sale',
                ),
                ContainerTwoItem(
                  iconone: Icon(
                    Icons.wifi,
                    color: Colors.green,
                    size: 25,
                  ),
                  icontwo: Icon(
                    Icons.chat,
                    color: Colors.green,
                    size: 25,
                  ),
                  packagename: 'Zong Club Bundle',
                  previousprice: '3000',
                  quantityone: '50',
                  quantitytwo: '1500',
                  quantitytypeone: 'Data',quantitytypetwo: 'SMS',
                  realprice: '2000',
                  subscribe: (){},
                  validity: '30 Days',
                  yctext: 'Flash sale',
                ),
              ],
            ),
          ),

        ],
      )),
    );
  }
}
