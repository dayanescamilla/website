import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/theme/references.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(
              //   padding: EdgeInsetsDirectional.symmetric(vertical: 10, horizontal: 50),
              //   child: Column(
              //     children: [
              //       TextFormField(
              //         autofocus: true,
              //         keyboardType: TextInputType.emailAddress,
              //         textCapitalization: TextCapitalization.characters,
              //         autovalidateMode: AutovalidateMode.onUserInteraction,
              //         decoration: InputDecoration(
              //             labelText: 'Ingresar nombre',
              //         suffixIcon: Icon(Icons.email, color: Colors.white,)),
              //       ),
              //       SizedBox(height: 10),
              //       TextFormField(
              //         autofocus: true,
              //         keyboardType: TextInputType.emailAddress,
              //         decoration: InputDecoration(
              //             labelText: 'Correo electronico'),
              //       ),
              //       SizedBox(height: 10),
              //       TextFormField(
              //         autofocus: true,
              //
              //         keyboardType: TextInputType.emailAddress,
              //         decoration: InputDecoration(
              //             labelText: 'Descripcion'),
              //       ),
              //       SizedBox(height: 10),
              //     ],
              //   ),
              // ),
              Expanded(child: Image.asset(imgDash)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () => _sendEmail(),
                      icon: Image.asset(icEmail, scale: 3)),
                  IconButton(
                      onPressed: () => _urlGithub(),
                      icon: Image.asset(icGithub, scale: 3)),
                  IconButton(
                      onPressed: () => _urlTwitter(),
                      icon: Image.asset(icTwitter, scale: 3)),
                  IconButton(
                      onPressed: () => _urlTelegram(),
                      icon: Image.asset(icTelegram, scale: 3)),
                  IconButton(
                      onPressed: () => _urlLinkedin(),
                      icon: Image.asset(icLinkedin, scale: 3)),
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
          )),
    );
  }

  _sendEmail() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: urlEmail,
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

  _urlTwitter() {
    final Uri twitterLaunchUri =
        Uri.parse(urlTwitter);
    launchUrl(twitterLaunchUri);
  }

  _urlLinkedin() {
    final Uri linkedinLaunchUri = Uri.parse(urlLinkedin);
    launchUrl(linkedinLaunchUri);
  }
}
