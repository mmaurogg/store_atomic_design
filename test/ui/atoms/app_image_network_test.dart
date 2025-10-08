import 'package:flutter_test/flutter_test.dart';
import 'package:store_atomic_design/ui/atoms/app_image_network.dart';

void main() {
  testWidgets("AppImageNetwork ", (tester) async {
    await tester.pumpWidget(const AppImageNetwork(imageUrl: ''));
  });
}
