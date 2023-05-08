import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/providers/user_provider.dart';
import 'package:food_app/screens/home/home_screen.dart';
import 'package:food_app/screens/my_profile/my_profile.dart';
import 'package:food_app/screens/review_cart/review_cart.dart';

// ignore: must_be_immutable
class DrawerSide extends StatefulWidget {
  UserProvider userProvider;
  DrawerSide({super.key, required this.userProvider});
  @override
  // ignore: library_private_types_in_public_api
  _DrawerSideState createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  get WishLsit => null;

  Widget listTile(
      {required String title,
      required IconData iconData,
      required Function onTap}) {
    return Container(
      height: 50,
      child: ListTile(
        onTap: onTap(),
        leading: Icon(
          iconData,
          size: 28,
        ),
        title: Text(
          title,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var userData = widget.userProvider.currentUserData;
    // ignore: prefer_typing_uninitialized_variables
    var onTap2;
    var onTap3;
    var onTap4;
    var onTap5;
    return Drawer(
      child: Container(
        color: primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // ignore: prefer_const_constructors
                    CircleAvatar(
                      radius: 43,
                      backgroundColor: Colors.white54,
                      // ignore: prefer_const_constructors
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow,
                        // ignore: prefer_const_constructors
                        backgroundImage: NetworkImage(
                          'https://s3.envato.com/files/328957910/vegi_thumb.png',
                        ),
                        radius: 40,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(userData.userName),
                        Text(
                          userData.userEmail,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            listTile(
              iconData: Icons.home_outlined,
              title: "Home",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            listTile(
              iconData: Icons.shop_outlined,
              title: "Review Cart",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ReviewCart(),
                  ),
                );
              },
            ),
            listTile(
              iconData: Icons.person_outlined,
              title: "My Profile",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        MyProfile(userProvider: widget.userProvider),
                  ),
                );
              },
            ),
            listTile(
                iconData: Icons.notifications_outlined,
                title: "Notificatio",
                onTap: onTap2),
            listTile(
                iconData: Icons.star_outline,
                title: "Rating & Review",
                onTap: onTap3),
            listTile(
                iconData: Icons.favorite_outline,
                title: "Wishlist",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        var wishLsit = WishLsit;
                        return wishLsit();
                      },
                    ),
                  );
                }),
            listTile(
                iconData: Icons.copy_outlined,
                title: "Raise a Complaint",
                onTap: onTap4),
            listTile(
                iconData: Icons.format_quote_outlined,
                title: "FAQs",
                onTap: onTap5),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ignore: prefer_const_constructors
                  Text("Contact Support"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Call us:"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("+923352580282"),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text("Mail us:"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "assarbaloch5@gmail.com",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}