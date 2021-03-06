import 'package:flutter/material.dart';
import 'package:khetipati/constant/colors.dart';
import 'package:khetipati/screens/cart/cart.dart';
import 'package:khetipati/screens/home/home.dart';
import 'package:khetipati/widgets/Bottomnav.dart';

class DeliveryOrders extends StatefulWidget {
  const DeliveryOrders({Key? key}) : super(key: key);

  @override
  _DeliveryOrdersState createState() => _DeliveryOrdersState();
}

class _DeliveryOrdersState extends State<DeliveryOrders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.mainGreen,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.mainGreen,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Orders',
            style: TextStyle(
                fontSize: 22,
                color: AppColors.textGreen,
                fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_rounded,
                  size: 20, color: AppColors.textGreen)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //width: 414,
                height: 800,
                decoration: BoxDecoration(
                  color: AppColors.mainGrey,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20,
                          left: MediaQuery.of(context).size.width * 0.05,
                          right: MediaQuery.of(context).size.width * 0.05),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              width: 378,
                              height: 34,
                              child: TabBar(
                                tabs: [
                                  Tab(
                                    child: FittedBox(
                                      child: Text(
                                        'Orders Completed',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.green[900],
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: FittedBox(
                                      child: Text(
                                        'Orders Pending',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.green[900],
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.zero,
                              height: 400,
                              width: 350,
                              child: TabBarView(
                                children: [
                                  ListView(
                                    children: [
                                      OrderItems(
                                          'assets/images/items/grapes.png',
                                          'Cherry',
                                          'Delivered',
                                          Color.fromRGBO(135, 194, 65, 0.2)),
                                      Divider(),
                                      OrderItems(
                                          'assets/images/items/melons.png',
                                          'Cherry',
                                          'Delivered',
                                          Color.fromRGBO(135, 194, 65, 0.2)),
                                      Divider(),
                                      OrderItems(
                                          'assets/images/items/melons.png',
                                          'Cherry',
                                          'Delivered',
                                          Color.fromRGBO(135, 194, 65, 0.2)),
                                    ],
                                  ),
                                  ListView(
                                    children: [
                                      OrderItems(
                                          'assets/images/items/melons.png',
                                          'Melon',
                                          'Pending',
                                          Color.fromRGBO(135, 194, 65, 0.2)),
                                      Divider(),
                                      OrderItems(
                                          'assets/images/items/grapes.png',
                                          'Cherry',
                                          'Pending',
                                          Color.fromRGBO(135, 194, 65, 0.2)),
                                      Divider(),
                                      OrderItems(
                                          'assets/images/items/melons.png',
                                          'Melon',
                                          'Delivered',
                                          Color.fromRGBO(135, 194, 65, 0.2)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        // floatingActionButtonLocation:
        //     FloatingActionButtonLocation.miniCenterDocked,
        // floatingActionButton: InkWell(
        //   onTap: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => Cart()),
        //     );
        //   },
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 20.0),
        //     child: Container(
        //       // padding: EdgeInsets.only(top: 20),
        //       width: 68,
        //       height: 68,
        //       decoration: BoxDecoration(
        //           color: AppColors.mainGrey,
        //           border: Border.all(width: 5, color: AppColors.mainGreen),
        //           borderRadius: BorderRadius.circular(40)),
        //       child: Icon(
        //         Icons.shopping_cart_outlined,
        //         color: Color.fromRGBO(0, 0, 0, 0.5),
        //         size: 30,
        //       ),
        //     ),
        //   ),
        // ),
        // bottomNavigationBar: BottomNav(),
      ),
    );
  }

  Widget OrderItems(WishlistItemImg, itemName, title, LabelColor) {
    return Container(
      height: 113,
      width: 378,
      child: Stack(
        children: [
          Positioned(
            top: 22,
            left: 11,
            child: Container(
              width: 96,
              height: 71,
              child: Image.asset(
                WishlistItemImg,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 28, left: MediaQuery.of(context).size.width * 0.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textblack),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Dropoff: Baneshwor,\nKathmandu',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.8)),
                ),
              ],
            ),
          ),
          // Flexible(
          //   child: SizedBox(
          //     width: 309,
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(
                top: 29,
                right: 10,
                left: MediaQuery.of(context).size.width * 0.6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                labels(title, LabelColor),
                SizedBox(
                  height: 10,
                ),
                FittedBox(
                  child: Text(
                    '23 hrs ago',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget labels(title, LabelColor) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Container(
          //width: 50,
          // height: 22,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: LabelColor),
          child: Center(
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  title,
                  style: TextStyle(
                      color: AppColors.textGreen,
                      fontSize: MediaQuery.of(context).size.width / 30,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
