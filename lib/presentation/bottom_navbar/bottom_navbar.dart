import 'package:clothe/assets/app_icons.dart';
import 'package:clothe/presentation/catagory/ui/catagory_page.dart';
import 'package:clothe/presentation/favorite/ui/favorite_page.dart';
import 'package:clothe/presentation/home/presentation/home_page.dart';
import 'package:clothe/presentation/korzinka/ui/korzinka_page.dart';
import 'package:clothe/presentation/profile/ui/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _indexNum = 0;
  final List<Widget> nav_bars = const [
    HomePage(),
    CatagoryPage(),
    FavoritePage(),
    KorzinkaPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: nav_bars[_indexNum],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(26), topRight: Radius.circular(26)),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _indexNum,
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: const TextStyle(color: Colors.grey),
            selectedLabelStyle: const TextStyle(
              color: Color(0xffFF7A00),
            ),
            onTap: (v) {
              _indexNum = v;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.home,
                    color: Colors.grey,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.catagory), label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.favoriteBAr), label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.korzinka), label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.profile), label: '')
            ],
            iconSize: 100,
          ),
        ));
  }
}
