import 'package:flutter/material.dart';
import 'package:invoice_management/invoice_admin/expense/pie_data.dart';

class IndicatorsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: PieData.data
            .map(
              (data) => Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: buildIndicator(
                  color: data.color,
                  text: data.name,
                  // isSquare: true,
                ),
              ),
            )
            .toList(),
      );

  Widget buildIndicator({
    @required Color? color,
    @required String? text,
    bool isSquare = false,
    double size = 16,
    Color textColor = const Color(0xff505050),
  }) =>
      Row(
        children: <Widget>[
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
              color: color,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            text!,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          )
        ],
      );
}
