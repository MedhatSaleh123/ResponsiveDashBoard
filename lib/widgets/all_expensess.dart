import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expensess_header.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item_list_view.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

class AllExpensess extends StatelessWidget {
   AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensessHeader(),
          SizedBox(height: 16,),
       AllExpensessItemListView()
        ],
      ),
    );
  }
}
