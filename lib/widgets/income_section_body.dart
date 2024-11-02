import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MediaQuery.sizeOf(context).width;
   return SizeConfig.width >=SizeConfig.desktop&& SizeConfig.width<=  1750?  Expanded(child: Padding(
     padding: const EdgeInsets.all(16.0),
     child: DetailedIncomeChart(),
   )): Row(
    crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(
          flex: 2,
          child: IncomeDetails()),
      ],
    );
  }
}
