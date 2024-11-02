import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transctionModel});
  final TransctionModel transctionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transctionModel.title,
          style: AppStyles.styleRegular16(context),
        ),
        subtitle: Text(
          transctionModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: Color(0xffAAAAAA)
          ),
        ),
        trailing: Text(
          transctionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: transctionModel.isWithdrawal
                  ? Color(0xffF3735E)
                  : Color(0XFF7CD87A),),
        ),
      ),
    );
  }
}
