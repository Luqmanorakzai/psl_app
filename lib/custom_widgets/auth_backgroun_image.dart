import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthBackgroundImage extends StatelessWidget {
  final Widget child;
  const AuthBackgroundImage({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity.h,
      width: double.infinity.w,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/loginbg.png'),
              fit: BoxFit.fill
          )
      ),
      child: child,
    );
  }
}
