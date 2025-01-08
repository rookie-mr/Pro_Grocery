import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/components/app_back_button.dart';
import '../../core/constants/constants.dart';
import 'components/help_topics.dart';
import 'components/top_questions.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Help'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi! How can we help?',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: AppDefaults.padding),
                child: SearchBar(
                  hintText: 'Search',
                  trailing: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppIcons.search),
                    )
                  ],
                ),
              ),
              const TopQuestions(),
              const HelpTopics(),
            ],
          ),
        ),
      ),
    );
  }
}
