

import '../../base.dart';
import '../../models/my_user.dart';

abstract class LoginNavigator extends BaseNavigator {
  void goToHome(MyUser user);
}
