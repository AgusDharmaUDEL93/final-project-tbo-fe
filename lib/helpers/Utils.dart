import 'package:get/get.dart';

import '../app/widgets/loading.dart';


class Utils{
  static void loadingAnimationDialog() {
    Get.dialog(
      const LoadingAnimation(),
      barrierDismissible: false,
      useSafeArea: false,
    );
  }
}