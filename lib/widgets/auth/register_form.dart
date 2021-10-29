import 'package:flutter/material.dart';
import 'package:gym_app/widgets/auth/auth_button.dart';
import 'package:intl/intl.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  List<String> games = const ['Handball', 'Football', 'Swimming', 'Tennis', 'Other'];
  List<String> goals = const [
    'Rehabilitation',
    'Injuries Recovery',
    'Getting Lean',
    'Bulking',
    'Other'
  ];
  String? _selectedGame;
  String? _selectedGoal;
  DateTime? _birthDate;

  void _startShowingDatePicker() async {
    try {
      final selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
      );
      setState(() {
        _birthDate = selectedDate;
      });
    } catch (error) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Name',
                contentPadding: EdgeInsets.only(left: 15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'E-mail',
                contentPadding: EdgeInsets.only(left: 15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                contentPadding: EdgeInsets.only(left: 15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                contentPadding: EdgeInsets.only(left: 15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Mobile No.',
                contentPadding: EdgeInsets.only(left: 15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 130,
                  child: DropdownButtonFormField<dynamic>(
                    value: _selectedGame,
                    hint: const FittedBox(child: Text('Chose Game')),
                    isExpanded: true,
                    items: <DropdownMenuItem>[
                      ...games
                          .map((game) => DropdownMenuItem(value: game, child: Text(game)))
                          .toList()
                    ],
                    decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 15)),
                    onChanged: (value) {
                      setState(() {
                        _selectedGame = value.toString();
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: DropdownButtonFormField<dynamic>(
                  value: _selectedGoal,
                  hint: const Text('Chose your Goal'),
                  isExpanded: true,
                  items: <DropdownMenuItem>[
                    ...goals
                        .map((goal) => DropdownMenuItem(value: goal, child: Text(goal)))
                        .toList()
                  ],
                  decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 15)),
                  onChanged: (value) {
                    setState(() {
                      _selectedGoal = value.toString();
                    });
                  },
                ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(_birthDate == null
                          ? 'Chose Birth Date'
                          : DateFormat.yMd().format(_birthDate!)),
                    ),
                  ),
                  const Spacer(),
                  IconButton(onPressed: _startShowingDatePicker, icon: const Icon(Icons.date_range))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Address',
                contentPadding: EdgeInsets.only(left: 15),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const AuthButton(title: 'Register')
          ],
        )),
      ),
    );
  }
}
