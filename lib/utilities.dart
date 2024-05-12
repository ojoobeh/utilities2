
import 'utilities_platform_interface.dart';

export 'components/components.dart';

class Utilities {
  Future<String?> getPlatformVersion() {
    return UtilitiesPlatform.instance.getPlatformVersion();
  }
}
