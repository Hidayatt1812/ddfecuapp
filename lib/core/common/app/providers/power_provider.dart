import 'package:fluent_ui/fluent_ui.dart';

class PowerProvider extends ChangeNotifier {
  bool _powerStatus = false;

  bool get powerStatus => _powerStatus;

  bool switchPowerStatus(bool status) {
    _powerStatus = status;

    Future.delayed(Duration.zero, notifyListeners);

    return _powerStatus;
  }
}
