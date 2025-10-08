import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:store_atomic_design/ui/atoms/app_text.dart';

void main() {
  testWidgets("Apptext con shot text", (tester) async {
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: AppText("H"),
      ),
    );

    //await tester.pumpWidget(const MaterialApp(home: AppText("H")));

    final textFinder = find.text("H");
    expect(textFinder, findsOneWidget);
  });

  testWidgets("Enconter un widget Text en el codigo", (tester) async {
    final childWidget = Padding(padding: EdgeInsets.zero);
    await tester.pumpWidget(Container(child: childWidget));
    expect(find.byWidget(childWidget), findsOneWidget);
  });
}
