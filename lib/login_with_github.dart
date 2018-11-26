import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginWithGithub extends StatelessWidget {
  final VoidCallback onPressedEvent;

  const LoginWithGithub({Key key, 
  
  @required this.onPressedEvent}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
      textColor: Colors.white,
      icon: SvgPicture.asset(
        'assets/images/github_mark.svg',
        color: Colors.white,
      ),
      onPressed: onPressedEvent,
      label: RichText(
        text: TextSpan(children: [
          TextSpan(text: 'Login with '),
          TextSpan(
              text: 'Github', style: TextStyle(fontWeight: FontWeight.bold))
        ]),
      ),
      color: Color.fromRGBO(93, 179, 68, 1.0),
    );
  }
}
