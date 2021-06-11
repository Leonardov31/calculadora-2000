import 'package:calculator/features/calulator/ui/components/history_list.dart';
import 'package:flutter/material.dart';

class HistoryButton extends StatelessWidget {
  const HistoryButton({
    Key? key,
    required double screenWidth,
  })  : _screenWidth = screenWidth,
        super(key: key);

  final double _screenWidth;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _screenWidth < 560,
      child: IconButton(
        onPressed: () {
          showHistory(context);
        },
        icon: Icon(Icons.history),
      ),
    );
  }
}

Future<dynamic> showHistory(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return History();
    },
  );
}
