import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {

	late final String text;

	Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
	 	width: double.infinity,
		margin: EdgeInsets.all(20),
      child: Text(
			text,
			style: TextStyle(fontSize: 25),
			textAlign: TextAlign.center,
	 	),
    );
  }
}