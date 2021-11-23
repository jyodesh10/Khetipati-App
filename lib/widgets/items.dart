import 'package:flutter/material.dart';
import 'package:khetipati/constant/colors.dart';
import 'package:khetipati/screens/home/fruits.dart';

Widget Items(BuildContext context, itemName, itemPic) {
  return Padding(
    padding: const EdgeInsets.only(left: 6, right: 6),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Fruits()),
        );
      },
      child: Container(
        width: 168,
        height: 226,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Stack(children: [
                Positioned(
                    top: 9,
                    left: 11,
                    child: InkWell(
                      child: Image.asset('assets/icons/heart.png'),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                                  '1 Item added to Wishlist. Go to Wishlist.')),
                        );
                      },
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    itemPic,
                    fit: BoxFit.contain,
                  ),
                ),
              ]),
            ),
            // Container(
            //   height: 120,
            //   width: 169,
            //   //color: AppColors.mainGrey,
            //   child: Image.asset(itemPic),
            // ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              itemName,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textblack),
                            ),
                            Text(
                              '100 kcal',
                              style: TextStyle(
                                  fontSize: 12, color: AppColors.textblack),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rs. 250',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textGreen),
                        ),
                        InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      '1 Item added to Cart. Go to Cart.')),
                            );
                          },
                          child: Container(
                            height: 30,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Color.fromRGBO(135, 194, 65, 1)),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              size: 20,
                              color: Color.fromRGBO(135, 194, 65, 0.8),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
