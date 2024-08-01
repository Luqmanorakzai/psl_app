import 'package:flutter/cupertino.dart';

class AuthBackgroundImage extends StatelessWidget {
  final Widget child;
  const AuthBackgroundImage({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/loginbg.png'),
              fit: BoxFit.fill
          )
      ),
      child: child,
    );
  }
}
