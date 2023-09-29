import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../vo/vo_popular_stock.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int rank;

  const PopularStockItem({required this.stock, required this.rank, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 40, child: rank.text.white.make()),
        width30,
        stock.stockName.text.white.make(),
        emptyExpanded,
        stock.todayPercentageString.text
            .color(stock.getPriceColor(context))
            .make(),
      ],
    ).pSymmetric(v: 25);
  }
}
