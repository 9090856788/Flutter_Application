import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ExpensePieChartScreen extends StatefulWidget {
  const ExpensePieChartScreen({super.key});

  @override
  State<ExpensePieChartScreen> createState() => _ExpensePieChartScreenState();
}

class _ExpensePieChartScreenState extends State<ExpensePieChartScreen> {
  Map<String, double> data = {"Food": 4000, "Travel": 2000, "Shopping": 3000};

  final List<Color> colors = [
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.green,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    double total = data.values.fold(0, (a, b) => a + b);

    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[200],
        child: Center(
          child: SizedBox(
            height: 300, // IMPORTANT: chart needs height
            child: Stack(
              alignment: Alignment.center,
              children: [
                /// PIE CHART
                PieChart(
                  PieChartData(
                    sections: _buildPieChartSections(total),
                    centerSpaceRadius: 50,
                    sectionsSpace: 3,
                  ),
                ),

                /// CENTER TOTAL TEXT
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Total", style: TextStyle(color: Colors.grey)),
                    Text(
                      "₹${total.toStringAsFixed(0)}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// BUILD SECTIONS
  List<PieChartSectionData> _buildPieChartSections(double total) {
    int index = 0;

    return data.entries.map((entry) {
      final value = entry.value;
      final percent = (value / total) * 100;

      final section = PieChartSectionData(
        color: colors[index % colors.length],
        value: value,
        title: "${percent.toStringAsFixed(1)}%",
        radius: 80,
        titleStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );

      index++;
      return section;
    }).toList();
  }
}
