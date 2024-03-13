import 'package:flutter/material.dart';
import 'package:terms_and_condition/terms_and_condition.dart';

class PrivacyPolicy extends StatelessWidget {
  PrivacyPolicy({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Scrollbar(
        interactive: true,
        radius: const Radius.circular(10),
        scrollbarOrientation: ScrollbarOrientation.right,
        trackVisibility: true,
        thumbVisibility: true,
        controller: _scrollController,
        child: ListView(
          controller: _scrollController,
          shrinkWrap: true,
          children: const [
            TitleText(title: 'Privacy Policy for Badi Bahen'),
            ContentText(
              contentText: 'At Badi Bahen, accessible from badibahen.in,'
                  ' one of our main priorities is the privacy of '
                  'our visitors. This Privacy Policy document'
                  ' contains types of information that is collected'
                  ' and recorded by Badi Bahen and how we use it.',
            ),
            TitleText(title: 'Log Files'),
            ContentText(
              contentText: 'Badi Bahen follows a standard'
                  ' procedure of using log files. These files log'
                  ' visitors when they visit websites. All hosting'
                  ' companies do this and a part of hosting services\''
                  ' analytics. The information collected by log files'
                  ' include internet protocol (IP) addresses, browser'
                  ' type, Internet Service Provider (ISP), date and time'
                  ' stamp, referring/exit pages, and possibly the number'
                  ' of clicks. These are not linked to any information'
                  ' that is personally identifiable. The purpose of the'
                  ' information is for analyzing trends, administering'
                  ' the site, tracking users\' movement on the website,'
                  ' and gathering demographic information. Our Privacy Policy'
                  ' was created with the help of the '
                  '(https://www.termsfeed.com/privacy-policy-generator)'
                  ' Privacy Policy Generator',
            ),
            TitleText(title: 'Cookies and Web Beacons'),
            ContentText(
              contentText: 'Like any other website,'
                  ' Badi Bahen uses cookies.'
                  ' These cookies are used to store'
                  ' information including visitors\''
                  ' preferences, and the pages on the website that'
                  ' the visitor accessed or visited.'
                  ' The information is used'
                  ' to optimize the users\' experience'
                  ' by customizing our web page'
                  ' content based on visitors\' browser'
                  ' type and/or other information.',
            )
          ],
        ),
      ),
    );
  }
}
