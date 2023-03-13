import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

main() => runApp(AppQuestion());

class _AppQuestionState extends State<AppQuestion> {
	var _selectedQuestion = 0;
	var _totalScore =  0;

	final _questions = const [
			{ 
				'text': 'Qual é a sua cor favorita?',
				'answer': [
					{'text':'Preto','score': 9},
					{'text':'Verde','score': 10},
					{'text':'Azul','score': 2},
					{'text':'Roxo','score': 8}
				] 
			},

			{ 
				'text': 'Qual é o seu animal favorito?', 
				'answer': [
					{'text': 'Raposa', 'score': 10},
					{'text': 'Coruja', 'score': 9},
					{'text': 'Furão', 'score': 7},
					{'text': 'Lince', 'score': 3}
				] 
			},

			{
				'text': 'Qual é a sua comida favorita?', 
				'answer': [
					{'text': 'Strogonoff', 'score': 10},
					{'text': 'Lasanha', 'score': 6},
					{'text': 'Escondidinho de carne', 'score': 2},
					{'text': 'Feijoada', 'score': 8}
				] 
			}
		];

		bool get hasSelectedQuestion {
		return _selectedQuestion < _questions.length;
	}

	void _respond(int score) {
		if( hasSelectedQuestion ) {
			setState(() {
				_selectedQuestion++;
				_totalScore += score;
			});
		}		
		print(_totalScore);
	}

	void _restartQuiz() {
		setState(() {
		  _selectedQuestion = 0;
		  _totalScore = 0;
		});
	}

	@override
	Widget build(BuildContext context) {
		
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: const Text('Questions'),
				),
				body: hasSelectedQuestion ? Quiz(
					questions: _questions,
					selectedQuestion: _selectedQuestion,
					respond: _respond,
				) : Result(_totalScore, _restartQuiz),
			),
		);
	}
}

class AppQuestion extends StatefulWidget {
  const AppQuestion({super.key});

	_AppQuestionState createState() {
		return _AppQuestionState();
	}

}