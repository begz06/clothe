import 'package:clothe/assets/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewProductItemWidget extends StatelessWidget {
  final String? text;

  const ListViewProductItemWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 88,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 88,
                width: 88,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppImages.pic)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                          text.toString(),
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
              );
            },
            itemCount: 10,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 8,
              );
            },
          ),
        ),
      ),
    );
  }
}
