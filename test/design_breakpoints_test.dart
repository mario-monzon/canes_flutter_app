import 'package:canes_app/design/design_breakpoints.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Design breakpoints test', () {
    expect(Breakpoints.br360, 360);
    expect(Breakpoints.br400, 400);
    expect(Breakpoints.br480, 480);
    expect(Breakpoints.br600, 600);
    expect(Breakpoints.br720, 720);
    expect(Breakpoints.br840, 840);
    expect(Breakpoints.br960, 960);
    expect(Breakpoints.br1024, 1024);
    expect(Breakpoints.br1280, 1280);
    expect(Breakpoints.br1440, 1440);
    expect(Breakpoints.br1600, 1600);
    expect(Breakpoints.br1920, 1920);
  });
}
