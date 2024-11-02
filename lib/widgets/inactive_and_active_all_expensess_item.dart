import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item_header.dart';
class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xfff1f1f1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: itemModel.image,
          ),
          SizedBox(
            height: 34,
          ),
          Text(itemModel.title,style: AppStyles.styleMedium16( context),),
        SizedBox(
            height: 8,
          ),
         Text(itemModel.date,
         style: AppStyles.styleRegular14( context),),
        SizedBox(
            height: 16,
          ),
         Text(itemModel.price,
         style: AppStyles.styleSemiBold24( context),),
        
        ],
      ),
    );
  }
}


class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xff4DB7F2),
        shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
            image: itemModel.image,
          ),
          SizedBox(
            height: 34,
          ),
          Text(itemModel.title,
          style: AppStyles.styleMedium16( context).copyWith(color: Colors.white),),
        SizedBox(
            height: 8,
          ),
         Text(itemModel.date,
         style: AppStyles.styleRegular14( context).copyWith(color: Color(0xffFAFAFA)),),
        SizedBox(
            height: 16,
          ),
         Text(itemModel.price,
         style: AppStyles.styleSemiBold24( context).copyWith(color: Colors.white),),
        
        ],
      ),
    );
  }
}
