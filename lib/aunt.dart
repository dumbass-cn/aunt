import 'package:flutter/material.dart';
import 'favor.dart';
import 'tap-boxes.dart';

class Aunt extends StatelessWidget {

	final body = Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
            // Expanded(child: TapBoxA(),),
            // Expanded(child: TapBoxA()),
            Expanded(child: TapBoxBParent(),)
        ],
    );

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: "Aunt Sample",
			home: Scaffold(
				appBar: AppBar(
					title: Text("Aunt"),
				),
				body: body,
			),
		);
	}

}