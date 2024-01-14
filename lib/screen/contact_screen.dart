import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/theme/icons.dart';
import 'package:website/theme/images.dart';
import 'package:website/theme/texts.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Image.asset(dash)),
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
                     onPressed: () => _urlTelegram(),
                     icon: Image.asset(telegram, scale: 3)),
                IconButton(
                    onPressed: () => _urlLinkedin(),
                    icon: Image.asset(linkedin, scale: 3)),
              ],
            ),
            const SizedBox(height: 10),
            Text(tvCopyright,
                style: const TextStyle(
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
    final Uri githubLaunchUri = Uri.parse(urlGitHub);
    launchUrl(githubLaunchUri);
  }

   _urlTelegram() {
     final Uri telegramLaunchUri = Uri.parse(urlTelegram);
     launchUrl(telegramLaunchUri);
   }

  _urlLinkedin() {
    final Uri linkedinLaunchUri = Uri.parse(urlCV);
    launchUrl(linkedinLaunchUri);
  }

}
