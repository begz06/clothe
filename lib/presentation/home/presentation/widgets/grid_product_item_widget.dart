import 'package:clothe/assets/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridProductWidget extends StatelessWidget {
  final String title;
  final String price;
  final String discountPrice;
  final Function() ontap;

  const GridProductWidget(
      {super.key,
      required this.title,
      required this.discountPrice,
      required this.price,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: ontap,
                        child: Container(
                          height: 163,
                          width: 159,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(AppImages.pic)),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                      top: 20,
                      left: 0,
                      child: Container(
                        height: 23,
                        width: 43,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xffFFB800),
                              Color(0xffFFB800),
                              Color(0xffFF7A00),
                            ]),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: const Text(
                          '-65%',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      )),
                  Positioned(
                    bottom: -18,
                    right: 3,
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Text(''),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: List.generate(
                  5,
                  (index) {
                    return const Icon(
                      Icons.star,
                      color: Color(0xffEAA92A),
                      size: 10,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              //wrap to expanded or to set maxline
              SizedBox(
                width: 159,
                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              Row(
                children: [
                  Text(
                    discountPrice,
                    style: TextStyle(
                        color: Colors.red.shade600,
                        fontSize: 13.5,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
