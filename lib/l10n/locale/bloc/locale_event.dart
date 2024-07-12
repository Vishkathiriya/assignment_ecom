import 'package:flutter/material.dart';

abstract class LocaleEvent {}

class SetLocale extends LocaleEvent {
  final Locale locale;

  SetLocale({required this.locale});
}
