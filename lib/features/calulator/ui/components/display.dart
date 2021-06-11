import 'package:calculator/features/calulator/logic/handle_click.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Display extends StatelessWidget {
  Display({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                context.watch<HandleClicks>().history,
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                context.watch<HandleClicks>().textToDisplay,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
