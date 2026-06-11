import 'package:flutter_test/flutter_test.dart';
import 'package:meridian_ielts_coach/main.dart';

void main() {
  testWidgets('shows IELTS coach home shell', (tester) async {
    await tester.pumpWidget(const MeridianIeltsCoachApp());

    expect(find.text('Today'), findsWidgets);
    expect(find.text('Diagnostic speaking test'), findsOneWidget);
    expect(find.text('Band 8'), findsOneWidget);
  });
}
