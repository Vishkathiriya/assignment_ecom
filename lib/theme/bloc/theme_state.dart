part of 'theme_bloc.dart';

class ThemeState {
  final bool isDarkThemeOn;

  ThemeState({required this.isDarkThemeOn});

  ThemeState copyWith({bool? isDarkThemeOn}) {
    return ThemeState(
      isDarkThemeOn: isDarkThemeOn ?? this.isDarkThemeOn,
    );
  }
}
