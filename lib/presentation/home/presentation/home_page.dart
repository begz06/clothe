import 'package:clothe/assets/app_icons.dart';
import 'package:clothe/assets/app_images.dart';
import 'package:clothe/presentation/home/presentation/widgets/grid_product_item_widget.dart';
import 'package:clothe/presentation/home/presentation/widgets/listview_product_item_widget.dart';
import 'package:clothe/utils/size.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 22,
                    right: 22,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 155,
                      ),
                      SizedBox(
                        height: context.height / 7,
                        child: PageView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Image.asset(AppImages.pageViewJpg);
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFFB800),
                        Color(0xffFFB800),
                        Color(0xffFF7A00),
                      ],
                    ),
                  ),
                  height: context.height * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            AppIcons.sort,
                            height: context.height * 0.04,
                            width: context.width * 0.04,
                          )),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                          text: 'Lux',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFF7A00),
                          ),
                        ),
                        TextSpan(
                            text: 'Outlet',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ))
                      ])),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            AppIcons.notification,
                            height: context.height * 0.03,
                            width: context.width * 0.03,
                          ))
                    ],
                  ),
                ),
                Positioned(
                  top: 89,
                  left: 24,
                  right: 24,
                  child: SizedBox(
                    height: context.height * 0.065,
                    child: TextFormField(
                      controller: _searchController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: 'What are you looking for?',
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                        prefixStyle:
                            const TextStyle(color: Colors.black, fontSize: 17),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.navigate_next_outlined),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          //widget
          ListViewProductItemWidget(
            text: 'All \nWomens',
          ),

          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),

          //widget
          GridProductWidget(
            ontap: () {
              Navigator.pushNamed(context, 'infoPage');
            },
            price: '\$32',
            discountPrice: '\$54',
            title: 'Midi dress with buttons short sleeve - pink',
          ),
        ],
      ),
    );
  }
}
