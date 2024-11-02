import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
        color: Color(0xff208BC7), title: 'Design service', value: '40%'),
    ItemDetailsModel(
        color: Color(0xff4DB7F2), title: 'Design product', value: '25%'),
    ItemDetailsModel(
        color: Color(0xff064060), title: 'Product royalti', value: '20%'),
    ItemDetailsModel(color: Color(0xffE2DECD), title: 'Other', value: '22%')
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map(
        (e) {
          return ItemDetails(itemDetailsModel: e);
        },
      ).toList(),
    );
    // return ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   itemBuilder:(context, index) {
    //   return ItemDetails(itemDetailsModel: items[index]);
    // }, );
  }
}
