import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item.dart';

class AllExpensessItemListView extends StatefulWidget {
  AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  final List<AllExpensessItemModel> items = [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20.129'),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20.129'),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20.129'),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(0);
            },
            child: AllExpensessItem(
              itemModel: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        SizedBox(width: 8,), 
         Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 2,
              itemModel: items[2],
            ),
          ),
        )
      ],
    );
    
  
    
    // return Row(
    //   // children: items.map((e) => Expanded(child: AllExpensessItem(itemModel: e)),).toList(),

    //   children: items.asMap().entries.map(
    //     (e) {
    //       int index = e.key;
    //       var item = e.value;
    //       if (index == 1) {
    //           return Expanded(
    //             child: GestureDetector(
    //               onTap: () {
    //                   updateIndex(index);
    //               },
    //               child: Padding(
    //                 padding: EdgeInsets.symmetric(horizontal: 12),
    //                 child: AllExpensessItem(
    //                   itemModel: item,
    //                   isSelected: selectedIndex == index,
    //                 ),
    //               ),
    //             ),
    //           );
    //         } else {
    //           return Expanded(
    //             child: GestureDetector(
    //               onTap: () {
    //                   updateIndex(index);
    //                 },
    //               child: AllExpensessItem(
    //                 itemModel: item,
    //                 isSelected: selectedIndex == index,
    //               ),
    //             ),
    //           );
    //         }
    //       },
    //     ).toList(),
    //   );
    // }

    // void updateIndex(int index) {
    //   setState(() {
    //     selectedIndex = index;
    //   });
 // }
 
}

  void updateIndex(int index) {
     setState(() {
      selectedIndex = index;
    });
  }
}