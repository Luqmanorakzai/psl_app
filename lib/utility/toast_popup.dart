import 'package:fluttertoast/fluttertoast.dart';
class ToastPopup{
  // when pass the para it will become dynamic
  // call every where by the className with dart operator
void toastShow(toastMsg, bgColor,textColor)
{
  Fluttertoast.showToast(
      msg: toastMsg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: bgColor,
      textColor: textColor,
      fontSize: 16.0
  );
}
}