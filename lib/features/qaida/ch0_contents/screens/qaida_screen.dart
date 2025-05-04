import 'package:app/core/utils/navigators.dart';
import 'package:app/features/qaida/ch1/screens/lesson_one_screen.dart';
import 'package:flutter/material.dart';

import '../../ch1/screens/lesson_two_screen.dart';

class QaidaScreen extends StatelessWidget {
  const QaidaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: Text('Qaida')),
    //   body: ListView(
    //     children: [
    //       Card.outlined(
    //         elevation: 0,
    //         child: ListTile(
    //           title: Text('Chapter 1: Alphabets'),
    //           subtitle: Text('Arabic letters with various forms'),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          spacing: 8,
          children: [
            // Chapter 1: Alphabets
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Chapter 1: Alphabets',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        navigateTo(context, LessonOneScreen());
                      },
                      title: Text('Lesson 1: Forms of Letters'),
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        navigateTo(context, Lesson2Screen());
                      },
                      title: Text('Lesson 2: Grouped Letters'),
                    ),
                  ),
                ],
              ),
            ),

            // Chapter 2: Vowels
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Chapter 2: Vowels',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        // navigate(context, Lesson3Screen());
                      },
                      title: Text('Lesson 3: Harakat'),
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        // navigate(context, Lesson4Screen());
                      },
                      title: Text('Lesson 4: Tanween'),
                    ),
                  ),
                ],
              ),
            ),

            // Chapter 3: Transitions and Phonetics
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Chapter 3: Transitions and Phonetics',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        // navigate(context, Lesson5Screen());
                      },
                      title: Text('Lesson 5: Sukoon'),
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        // navigate(context, Lesson6Screen());
                      },
                      title: Text('Lesson 6: Qalqalah'),
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        // navigate(context, Lesson7Screen());
                      },
                      title: Text('Lesson 7: Shaddah'),
                    ),
                  ),
                ],
              ),
            ),

            // Chapter 4: Special Rules and Advanced Topics
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Chapter 4: Special Rules and Advanced Topics',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        // navigate(context, Lesson8Screen());
                      },
                      title: Text('Lesson 8: Madd'),
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        // navigate(context, Lesson9Screen());
                      },
                      title: Text('Lesson 9: Idgham'),
                    ),
                  ),
                  // Add more lessons as necessary
                ],
              ),
            ),

            // Chapter 5: Other Pronunciation Rules
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Chapter 5: Other Pronunciation Rules',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        // navigate(context, Lesson10Screen());
                      },
                      title: Text('Lesson 10: Ikhfa'),
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        // navigate(context, Lesson11Screen());
                      },
                      title: Text('Lesson 11: Tafkhim and Tarqiq'),
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        // navigate(context, Lesson12Screen());
                      },
                      title: Text('Lesson 12: Ghunnah'),
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        // navigate(context, Lesson13Screen());
                      },
                      title: Text('Lesson 13: Al-Qalqalah Kubra'),
                    ),
                  ),
                  Card.outlined(
                    child: ListTile(
                      onTap: () {
                        // navigate(context, Lesson14Screen());
                      },
                      title: Text('Lesson 14: Raa Rules'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
