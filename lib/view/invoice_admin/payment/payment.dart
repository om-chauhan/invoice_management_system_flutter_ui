import 'package:invoice_management/imports.dart';

class Payment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartPageState();
}

class PieChartPageState extends State {
  final pay = PaymentController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 5),
          shrinkWrap: true,
          itemCount: pay.paymentList.length,
          itemBuilder: (BuildContext context, int i) {
            return PaymentCardTile(
              data: pay.paymentList[i],
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
