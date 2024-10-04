import 'package:cigarrozeroapp/design_system/onboarding/onboarding_button.dart';
import 'package:cigarrozeroapp/modules/onboarding/controller/onboarding_controller.dart';
import 'package:cigarrozeroapp/modules/onboarding/widgets/date_question_widget.dart';
import 'package:cigarrozeroapp/modules/onboarding/widgets/onboarding_four_widget.dart';
import 'package:cigarrozeroapp/modules/onboarding/widgets/text_question_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class OnboardingQuestionsScreen extends StatefulWidget {
  const OnboardingQuestionsScreen({super.key});

  @override
  State<OnboardingQuestionsScreen> createState() =>
      _OnboardingQuestionsScreenState();
}

class _OnboardingQuestionsScreenState extends State<OnboardingQuestionsScreen> {
  final _scrollController = ScrollController();
  final nameController = TextEditingController();

  final MaskedTextController dailyCigarsController =
      MaskedTextController(mask: '000');
  final MaskedTextController packAmountController =
      MaskedTextController(mask: '000');
  final MaskedTextController packPriceController =
      MaskedTextController(mask: 'R\$ 000.00');
  final dateController = MaskedTextController(mask: '00/00/0000');

  final Map<String, String> _answers = {};
  final List<Widget> _questionsList = [];
  String hasStoppedSmoking = '';
  late final OnboardingController onboardingController;

  @override
  void initState() {
    super.initState();
    _addQuestion(
      TextQuestionWidget(
        questionText: 'Como você gostaria de ser chamado?',
        controller: nameController,
        onChanged: (String value) {
          _answers['name'] = value;
        },
        inputType: TextInputType.name,
      ),
    );
  }

  @override
  didChangeDependencies() {
    super.didChangeDependencies();
    onboardingController = Provider.of<OnboardingController>(context);
  }

  void _addQuestion(Widget questionWidget) {
    setState(() {
      _questionsList.add(questionWidget);
    });
    Future.delayed(const Duration(milliseconds: 300), () {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  void _handleNextQuestion() {
    final currentIndex = _questionsList.length;

    void showSnackBar(String message) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    }

    bool validateField(String value, String message) {
      if (value.isEmpty) {
        showSnackBar(message);
        return false;
      }
      return true;
    }

    if (currentIndex == 1) {
      if (!validateField(nameController.text, 'Por favor, insira seu nome.')) {
        return;
      }

      _addQuestion(OnboardingFourWidget(
        onSelectionChanged: (String value) {
          hasStoppedSmoking = value;
          _answers['hasStoppedSmoking'] = value;
        },
      ));
    } else if (currentIndex == 2) {
      if (!validateField(
          hasStoppedSmoking, 'Por favor, responda se parou de fumar.')) return;

      _addQuestion(
        DateQuestionWidget(
          dateController: dateController,
          questionText: hasStoppedSmoking == 'SIM'
              ? 'Qual a data que você parou de fumar?'
              : 'Escolha uma data para iniciar uma vida sem cigarro!',
          onChanged: (value) => _answers['date'] = value,
        ),
      );
    } else if (currentIndex == 3) {
      if (!validateField(dateController.text, 'Por favor, insira uma data.')) {
        return;
      }

      try {
        DateTime parsedDate =
            DateFormat('dd/MM/yyyy').parseStrict(dateController.text);
        if (hasStoppedSmoking == 'NÃO' && parsedDate.isBefore(DateTime.now())) {
          showSnackBar('A data deve ser hoje ou uma data futura.');
          return;
        }

        _addQuestion(
          TextQuestionWidget(
            questionText: 'Quantos cigarros você fumava diariamente?',
            controller: dailyCigarsController,
            onChanged: (value) => _answers['cigarrosDiários'] = value,
          ),
        );
      } catch (e) {
        showSnackBar(
            'Data inválida. Por favor, insira uma data válida no formato dd/MM/yyyy.');
      }
    } else if (currentIndex == 4) {
      if (!validateField(dailyCigarsController.text,
          'Por favor, insira a quantidade de cigarros diários.')) return;

      _addQuestion(
        TextQuestionWidget(
          questionText: 'Quantos cigarros vinham no maço?',
          controller: packAmountController,
          onChanged: (value) => _answers['cigarrosMaço'] = value,
        ),
      );
    } else if (currentIndex == 5) {
      if (!validateField(packAmountController.text,
          'Por favor, insira a quantidade de cigarros por maço.')) return;

      _addQuestion(
        TextQuestionWidget(
          questionText: 'Qual o valor de um maço?',
          controller: packPriceController,
          onChanged: (value) => _answers['valorMaço'] = value,
        ),
      );
    } else if (currentIndex == 6) {
      if (!validateField(
          packPriceController.text, 'Por favor, insira o valor de um maço.')) {
        return;
      }

      onboardingController.saveData(_answers);
      Navigator.pushReplacementNamed(context, '/final_onboarding');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: _questionsList.length,
                itemBuilder: (context, index) {
                  return _questionsList[index];
                },
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(24),
              child: OnboardingButton(
                onPressed: () {
                  if (_questionsList.isEmpty) {
                    _answers['name'] = nameController.text;
                  } else if (_questionsList.length == 1) {
                    _answers['hasStoppedSmoking'] = hasStoppedSmoking;
                  } else if (_questionsList.length == 2) {
                    _answers['date'] = dateController.text;
                  } else if (_questionsList.length == 3) {
                    _answers['cigarrosDiários'] = dailyCigarsController.text;
                  } else if (_questionsList.length == 4) {
                    _answers['cigarrosMaço'] = packAmountController.text;
                  } else if (_questionsList.length == 5) {
                    _answers['valorMaço'] = packPriceController.text;
                  }
                  _handleNextQuestion();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
