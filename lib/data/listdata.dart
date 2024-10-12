import 'package:finance_app/data/data.dart';
import 'package:finance_app/data/listdata.dart';

List<money> geter() {
  money fiverr = money();
  fiverr.buy = false;
  fiverr.fee = '1000';
  fiverr.image = 'food.png';
  fiverr.name = 'food';
  fiverr.time = 'today';
  money rent = money();
  rent.buy = true;
  rent.fee = '7000';
  rent.image = 'rent.png';
  rent.name = 'trasfer for rent';
  rent.time = 'Aug 19,2024';
  money food = money();
  food.buy = true;
  food.fee = '300';
  food.image = 'fiverr.png';
  food.name = 'fiverr';
  food.time = 'today';
  return [fiverr,rent, food,fiverr,rent,food];
}
