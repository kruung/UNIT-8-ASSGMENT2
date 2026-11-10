// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:org_fair/data/event_repository.dart';
import 'package:org_fair/data/orgs.dart';
import 'package:org_fair/main.dart';
import 'package:org_fair/config.dart';

void main() {
  testWidgets('app launches with the org fair UI', (WidgetTester tester) async {
    await tester.pumpWidget(
      OrgFairApp(
        repository: OrgRepository(),
        events: EventRepository(createEventSource(http.Client())),
      ),
    );

    expect(find.text('CICT Org Fair'), findsWidgets);
  });
}
