import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/theme/icons.dart';
import 'package:website/theme/images.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorRed = Colors.red;
    return Container(
        alignment: Alignment.center,
        height: 300,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Image.asset(logo)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () => _sendEmail(),
                    icon: Image.asset(email, scale: 3)),
                IconButton(
                    onPressed: () => _urlGithub(),
                    icon: Image.asset(github, scale: 3)),
                IconButton(
                    onPressed: () => _urlTwitter(),
                    icon: Image.asset(twitter, scale: 3)),
                IconButton(
                    onPressed: () => _urlTelegram(),
                    icon: Image.asset(telegram, scale: 3)),
                IconButton(
                    onPressed: () => _urlLinkedin(),
                    icon: Image.asset(linkedin, scale: 3)),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
                '© 2023 Dayan Escamilla. All Rights Reserved. Website made with Flutter ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 12)),
            const SizedBox(height: 10),
          ],
        ));
  }

  _sendEmail() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'dayanescamillaperez@gmail.com',
    );
    launchUrl(emailLaunchUri);
  }

  _urlGithub() {
    final Uri githubLaunchUri = Uri.parse('https://github.com/dayanescamilla');
    launchUrl(githubLaunchUri);
  }

  _urlTelegram() {
    final Uri telegramLaunchUri = Uri.parse('https://t.me/dayanescamilla');
    launchUrl(telegramLaunchUri);
  }

  _urlTwitter() {
    final Uri twitterLaunchUri =
        Uri.parse('https://pub.dev/packages/url_launcher');
    launchUrl(twitterLaunchUri);
  }

  _urlLinkedin() {
    final Uri linkedinLaunchUri = Uri.parse(
        'https://drive.google.com/uc?export=download&id=13K5gchgUW0fA3laCw9V6tKiXsQkJEXdE');
    launchUrl(linkedinLaunchUri);
  }
}
