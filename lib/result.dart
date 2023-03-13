import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
    
	late final int score;
	late final void Function() onRestartQuiz;

	Result(this.score, this.onRestartQuiz);

	String get resultText {
		if (score < 8) {
			return 'Parabéns';
		} else if (score < 12) {
			return 'Ótimo';
		} else if (score < 22) {
			return 'Impressionante';
		} else {
			return 'Incrível';
		}
	}

  	@override
  	Widget build(BuildContext context) {
    	return Column(
			mainAxisAlignment: MainAxisAlignment.center,
    	  	children: [
    	    	Center(
					child: Text(
						resultText,
						style: const TextStyle( fontSize: 40, letterSpacing: 5 ),
					),
				),
				TextButton(
					onPressed: onRestartQuiz,
					child: const Text(
						'Reiniciar Questionario?',
						style: TextStyle(
							fontSize: 20
						)
					),

				),
    		],
    	);
  	}
}