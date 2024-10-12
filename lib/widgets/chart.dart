import 'package:finance_app/data/model/add_date.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    List<Add_data>? a;
    final List<FlSpot> dayWiseData = [
      const FlSpot(0, 1), // Monday
      const FlSpot(1, 3), // Tuesday
      const FlSpot(2, 2), // Wednesday
      const FlSpot(3, 4), // Thursday
      const FlSpot(4, 2), // Friday
      const FlSpot(5, 5), // Saturday
      const FlSpot(6, 3), // Sunday
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 280, // Fixed height
        child: LineChart(
          LineChartData(
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  getTitlesWidget: (value, meta) {
                    const style = TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    );
                    String title;
                    switch (value.toInt()) {
                      case 0:
                        title = 'Mon';
                        break;
                      case 1:
                        title = 'Tue';
                        break;
                      case 2:
                        title = 'Wed';
                        break;
                      case 3:
                        title = 'Thu';
                        break;
                      case 4:
                        title = 'Fri';
                        break;
                      case 5:
                        title = 'Sat';
                        break;
                      case 6:
                        title = 'Sun';
                        break;
                      default:
                        title = '';
                        break;
                    }
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: Text(title, style: style),
                    );
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  getTitlesWidget: (value, meta) {
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: Text(
                        value.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            borderData: FlBorderData(
              show: true,
              border: Border.all(
                color: const Color(0xff37434d),
                width: 1,
              ),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: dayWiseData,
                isCurved: true,
                color: Color.fromARGB(255, 248, 70, 141),
                dotData: const FlDotData(show: false),
                belowBarData: BarAreaData(show: false),
              ),
            ],
            minX: 0,
            maxX: 6, 
            minY: 0,
            maxY: 6, 
          ),
        ),
      ),
    );
  }
}
