// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({
    Key? key,
    required this.image,
    this.imageBackground,
    this.imageColor,
  }) : super(key: key);
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible( 
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio( 
              aspectRatio: 1,
              child: Container(
               
               decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color: imageBackground ?? Color(0xfffafafa),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: Icon(
                color: imageColor == null ? Color(0xFF064061) : Colors.white,
                Icons.arrow_back_ios_new_outlined))
      ],
    );
  }
}
