import 'package:animations/animations.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/vo/vo_popular_stock_dummy.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_popular_stock_item.dart';
import 'package:flutter/material.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            '인기검색'.text.white.bold.size(18).make(),
            emptyExpanded,
            '오늘 ${DateTime.now().formattedTime} 기준'.text.white.size(12).make(),
          ],
        ).pSymmetric(h: 20, v: 15),
        height20,
        ...popularStockList
            .mapIndexed((element, index) => OpenContainer<bool>(
                  openColor: context.appColors.roundedLayoutBackground,
                  closedColor: context.appColors.roundedLayoutBackground,
                  openBuilder: (BuildContext context, VoidCallback _) {
                    return StockDetail(element.name);
                  },
                  closedBuilder: (BuildContext context, VoidCallback action) {
                    return Row(
                      children: [
                        (index + 1).text.bold.white.size(16).make(),
                        width20,
                        element.name.text.bold.white.size(16).make(),
                        const Spacer(),
                        element.todayPercentageString.text
                            .color(element.getPriceColor(context))
                            .size(16)
                            .make()
                      ],
                    ).pSymmetric(h: 20, v: 20);
                  },
                ))
            .toList()
      ],
    );
  }
}
