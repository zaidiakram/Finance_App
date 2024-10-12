import 'package:finance_app/data/data.dart';
import 'package:finance_app/data/top.dart';

List<money> geter_top() {
  money snap_food = money();
  snap_food.time = 'Oct 5,2024';
  snap_food.image = 'food.png';
  snap_food.buy = true;
  snap_food.fee = '- \$ 30';
  snap_food.name = 'macdonald';
  money snap = money();
  snap.image = 'rent.png';
  snap.time = 'today';
  snap.buy = true;
  snap.name = 'Rent';
  snap.fee = '- \$ 100';

  return [snap_food, snap];
}