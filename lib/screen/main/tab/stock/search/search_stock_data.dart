import 'package:get/get.dart';

import '../../../../../common/util/local_json.dart';
import '../vo/vo_simple_stock.dart';
class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;

  @override
  void onInit() {
    searchHistoryList.addAll(['삼성전자', 'LG전자', '현대차', '넷플릭스']);
    loadLocalStockJson();

    super.onInit();
  }

  Future<void> loadLocalStockJson() async {
    final jsonList = await LocalJson.getObjectList<SimpleStock>("stock_list.json");
    stocks.addAll(jsonList);
  }
}