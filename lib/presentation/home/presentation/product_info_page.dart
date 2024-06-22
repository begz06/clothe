import 'package:clothe/assets/app_icons.dart';
import 'package:clothe/assets/app_images.dart';
import 'package:clothe/presentation/home/presentation/widgets/grid_product_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';



class ProductInfoPage extends StatefulWidget {
  const ProductInfoPage({super.key});

  @override
  State<ProductInfoPage> createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Image.asset(
                AppImages.productPic,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(children: [
                      Row(children: [
                        ...List.generate(5, (index) {
                          return const Icon(
                            Icons.star,
                            color: Color(0xffEAA92A),
                            size: 16,
                          );
                        }),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          '126 reviews',
                          style: TextStyle(
                              fontSize: 11.5, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        Text(
                          'In Stock',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.green.shade600),
                        )
                      ]),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Polo Ralph Lauren wind breaker jacket - classic style - light blue',
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\$80.00',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '\$220.00',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Colours',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: SizedBox(
                          height: 47,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 47,
                                width: 47,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(AppImages.infolistpic)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Center(
                                    child: Text(
                                  '',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )),
                              );
                            },
                            itemCount: 10,
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                width: 8,
                              );
                            },
                          ),
                        ),
                      ),
                      //
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Sizes',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: SizedBox(
                          height: 47,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 47,
                                width: 47,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Center(
                                  child: Text(
                                    'XXS',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              );
                            },
                            itemCount: 10,
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                width: 8,
                              );
                            },
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  height: 155,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Item Details',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Text(
                          'Light blue jacket by Polo Ralph Lauren. Button neck with spread collar. Zip placket. Embroidered logo to chest and cuff Side pockets/ Elasticated hem. ',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'Regular fit. True to size. Model wears: UK/US',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Reviews',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                Text(
                                  'View All',
                                  style: TextStyle(
                                      fontSize: 10.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(Icons.navigate_next_rounded)
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Leslie Alexander',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(5, (index) {
                              return const Icon(
                                Icons.star,
                                color: Color(0xffEAA92A),
                                size: 13,
                              );
                            }),
                            const Row(
                              children: [
                                Text(
                                  'Jan 21, 2021',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Really cool and stylish light weight jacket, has 3 inside pockets and feels strong. The fitting is good and not too loose, quite warm but definitely not for winter.',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Text(
                              '535 people found this review useful',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Comment',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Helpful',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset(AppIcons.like)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                ////////////////////////////
                ///////////////////////////
                ///
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        'Related Products',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 133,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,

                            children: [
                              SizedBox(
                                height: 156,
                                child: Stack(
                                  
                                  children: [
                                    Container(
                                      height: 136,
                                      width: 133,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(AppImages.pic)),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Center(
                                          child: Text(
                                        '',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      )),
                                    ),
                                    Positioned(
                                        right: 4,
                                        bottom: 6,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.favorite,
                                            color:  Color(0xffEAA92A),
                                          ),
                                        )),
                                    Positioned(
                                      bottom: 0,
                                      child: Row(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ...List.generate(4, (index) {
                                            return const Icon(
                                              Icons.star,
                                              color: Color(0xffEAA92A),
                                              size: 13,
                                            );
                                          }),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6,),
                              Text(
                                'Tommy Hilfiger padded jackets - black with red dedijbijdoed ewbdihjbd kebdihebdi ',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('£55',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,),)

                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 16,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      ////////////////
      ///////////////
      /////////////
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.navigate_before),
            Container(
              height: 35,
              width: 220,
              decoration: BoxDecoration(
                color: const Color(0xffFFB800),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Add to cart',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            SvgPicture.asset(AppIcons.favorite)
          ],
        ),
      ),
    );
  }
}
