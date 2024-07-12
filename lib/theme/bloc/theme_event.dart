part of 'theme_bloc.dart';

abstract class ThemeEvent {}

class ToggleTheme extends ThemeEvent {
  final bool isDarkThemeOn;

  ToggleTheme({required this.isDarkThemeOn});
}
