import 'package:flutter/material.dart';

import '../shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  final String base;

  const CounterView({
    Key? key,
    required this.base,
  }) : super(key: key);
  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int _contador = 5;
  @override
  void initState() {
    super.initState();
    if (int.tryParse(widget.base) != null) _contador = int.parse(widget.base);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contador Stateful',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Contador: $_contador',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              color: Colors.green,
              text: 'Incrementar',
              onPressed: () => setState(() => _contador++),
            ),
            CustomFlatButton(
              text: 'Desender',
              onPressed: () => setState(() => _contador--),
            ),
          ],
        ),
      ],
    );
  }
}
