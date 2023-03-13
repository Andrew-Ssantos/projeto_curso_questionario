import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
	final List<Map<String, Object>> questions;
  	final int selectedQuestion;
	final void Function(int) respond;

	Quiz({
		required this.questions,
		required this.selectedQuestion,
		required this.respond
	});

	bool get hasSelectedQuestion {
		return selectedQuestion < questions.length;
	}

  	@override
  	Widget build(BuildContext context) {
		List<Map<String, Object>> answers = hasSelectedQuestion 
			? questions[selectedQuestion].cast()['answer']
			: [];

    	return Column(
      	children: <Widget>[
				Question(questions[selectedQuestion]['text'].toString()),
				...answers.map((answ) {
					return Answer(
						answ['text'].toString(),
						() => respond(int.parse(answ['score'].toString())),
					);
				}).toList(),
      	],
   	);
  	}
}