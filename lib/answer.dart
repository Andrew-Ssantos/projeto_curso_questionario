
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  	late final String answerText;
	late void Function() onSelection;

	Answer(this.answerText, this.onSelection);

	@override
  	Widget build(BuildContext context) {

	return Container(
		width: double.infinity,
	  	child: ElevatedButton(
	  	style: ElevatedButton.styleFrom(
	  		foregroundColor: Colors.white,
	  		backgroundColor: Colors.blue[400]
	  	),
	  	onPressed: onSelection,
	  	child: Text(answerText),
		),
	);

// 	 return Container(
// 	 	padding: EdgeInsets.all(14),
// 	 	child: Text(
// 			answerText,
// 			style: TextStyle(fontSize: 18),
// 		),
// 	 );
  }
}