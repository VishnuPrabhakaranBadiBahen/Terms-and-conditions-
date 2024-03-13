import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TermsAndCondition extends StatelessWidget {
  TermsAndCondition({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms & Condition'),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scrollbar(
          interactive: true,
          radius: const Radius.circular(10),
          scrollbarOrientation: ScrollbarOrientation.right,
          trackVisibility: true,
          thumbVisibility: true,
          controller: _scrollController,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            controller: _scrollController,
            children: const [
              TitleText(title: 'Terms & Condition'),
              ContentText(
                contentText: "These terms and conditions"
                    "outline the rules and regulations"
                    " for the use of Badi Bahen's Website,"
                    " located at badibahen.in.",
              ),
              ContentText(
                contentText: "The following terminology applies to"
                    " these Terms and Conditions, Privacy Statement"
                    " and Disclaimer Notice and all Agreements: 'Client',"
                    " 'You' and 'Your' refers to you, the person log"
                    " on this website and compliant to the Company's"
                    " terms and conditions. 'The Company', 'Ourselves',"
                    " 'We', 'Our' and 'Us', refers to our Company. 'Party',"
                    " 'Parties', or 'Us', refers to both the Client and ourselves."
                    " All terms refer to the offer, acceptance and "
                    "consideration of payment necessary to undertake"
                    " the process of our assistance to the Client in "
                    "the most appropriate manner for the express purpose"
                    " of meeting the Client's needs in respect of provision"
                    " of the Company's stated services, in accordance with "
                    "and subject to, prevailing law of in. Any use of the "
                    "above terminology or other words in the singular,"
                    " plural, capitalization and/or he/she or they, "
                    "are taken as interchangeable and therefore as"
                    " referring to same.Terms & Conditions Generator",
              ),
              TitleText(title: 'Cookies'),
              ContentText(
                contentText: "We employ the use of cookies."
                    " By accessing Badi Bahen, you agreed to use "
                    "cookies in agreement with the Badi Bahen's Privacy Policy.",
              ),
              ContentText(
                contentText: "Most interactive websites use cookies to"
                    " let us retrieve the user's details for each visit."
                    " Cookies are used by our website to enable the"
                    " functionality of certain areas to make it easier"
                    " for people visiting our website. Some of our"
                    " affiliate/advertising partners may also use cookies.",
              ),
              TitleText(title: "License"),
              ContentText(
                contentText: "Unless otherwise stated, Badi Bahen and/or"
                    " its licensors own the intellectual property rights "
                    "for all material on Badi Bahen. All intellectual "
                    "property rights are reserved. You may access this"
                    " from Badi Bahen for your own personal use subjected"
                    " to restrictions set in these terms and conditions.",
              ),
              ContentText(contentText: 'You must not:'),
              ContentTextWithNumber(
                number: '1',
                contentText: 'Republish material from Badi Bahen:',
              ),
              ContentTextWithNumber(
                number: '2',
                contentText:
                    'Sell, rent or sub-license material from Badi Bahen',
              ),
              ContentTextWithNumber(
                number: '3',
                contentText:
                    'Reproduce, duplicate or copy material from Badi Bahen',
              ),
              ContentTextWithNumber(
                number: '4',
                contentText: 'Redistribute content from Badi Bahen',
              ),
              ContentText(
                contentText: 'This Agreement shall begin on the date hereof.',
              ),
              ContentText(
                contentText: 'Parts of this website offer an opportunity'
                    ' for users to post and exchange opinions and'
                    ' information in certain areas of the website.'
                    ' Badi Bahen does not filter, edit, publish or'
                    ' review Comments prior to their presence on'
                    ' the website. Comments do not reflect the'
                    ' views and opinions of Badi Bahen,its agents'
                    ' and/or affiliates. Comments reflect the views'
                    ' and opinions of the person who post their '
                    'views and opinions. To the extent permitted '
                    'by applicable laws, Badi Bahen shall not be '
                    'liable for the Comments or for any liability,'
                    ' damages or expenses caused and/or suffered '
                    'as a result of any use of and/or posting of '
                    'and/or appearance of the Comments on this website.',
              ),
              ContentText(
                contentText: 'Badi Bahen reserves the right to'
                    ' monitor all Comments and to remove any Comments which'
                    ' can be considered inappropriate, offensive or causes'
                    ' breach of these Terms and Conditions.',
              ),
              ContentText(contentText: 'You warrant and represent that:'),
              ContentTextWithNumber(
                number: '1',
                contentText: 'You are entitled to post'
                    ' the Comments on our website and have all necessary'
                    ' licenses and consents to do so;',
              ),
              ContentTextWithNumber(
                number: '2',
                contentText: 'The Comments do not invade any intellectual'
                    ' property right, including without limitation '
                    'copyright, patent or trademark of any third party;',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.arrow_drop_down_outlined),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}

class ContentText extends StatelessWidget {
  const ContentText({super.key, required this.contentText});

  final String contentText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              contentText,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ContentTextWithNumber extends StatelessWidget {
  const ContentTextWithNumber({
    super.key,
    required this.contentText,
    required this.number,
  });

  final String contentText;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 45),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$number. ',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Text(
              contentText,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
