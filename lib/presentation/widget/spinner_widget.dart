import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';

class SpinnerWidget extends StatelessWidget {
  const SpinnerWidget({
    Key? key,
    required this.increase,
    required this.decrease,
    required this.total,
  }) : super(key: key);

  final VoidCallback increase;
  final VoidCallback decrease;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GFIconButton(
          onPressed: () => decrease(),
          size: 12,
          padding: EdgeInsets.all(5),
          icon: Icon(Icons.remove),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            total,
            style: TextStyle(fontSize: 17),
          ),
        ),
        GFIconButton(
          onPressed: () => increase(),
          size: 12,
          padding: EdgeInsets.all(5),
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
