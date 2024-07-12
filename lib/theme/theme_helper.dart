import 'package:ecommerce_assignment/utils/app_export.dart';

class EcommereceThemeHelper {
  static ThemeData get lightTheme {
    return ThemeData(
        brightness: Brightness.light,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        visualDensity: VisualDensity.standard,
        navigationBarTheme: NavigationBarThemeData(
            labelTextStyle: WidgetStatePropertyAll(
          GoogleFonts.notoSans(
            color: const Color(0XFF1D1D1D),
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        )),
        textTheme: TextThemes.lighttextTheme(),
        tabBarTheme: const TabBarTheme(
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            splashFactory: NoSplash.splashFactory),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF3E3DC5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0.r)),
                visualDensity:
                    const VisualDensity(vertical: -1, horizontal: -1),
                padding: EdgeInsets.zero)),
        colorScheme: ColorSchemes.lightColorSchemes);
  }

  static ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.dark,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        visualDensity: VisualDensity.standard,
        navigationBarTheme: NavigationBarThemeData(
            labelTextStyle: WidgetStatePropertyAll(
          GoogleFonts.notoSans(
            color: const Color(0XFFD9D9D9),
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        )),
        textTheme: TextThemes.darktextTheme(),
        tabBarTheme: const TabBarTheme(
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            splashFactory: NoSplash.splashFactory),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF3E3DC5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0.r)),
                visualDensity:
                    const VisualDensity(vertical: -1, horizontal: -1),
                padding: EdgeInsets.zero)),
        colorScheme: ColorSchemes.darkColorSchemes);
  }
}

class ColorSchemes {
  static const lightColorSchemes = ColorScheme.light(
    onError: Color(0XFFFF1D1D),
  );
  static const darkColorSchemes = ColorScheme.dark(
    onError: Color(0XFFFF1D1D),
  );
}

class TextThemes {
  static TextTheme lighttextTheme() => TextTheme(
        labelSmall: GoogleFonts.notoSans(
          color: const Color(0XFFC4C4C4),
          fontSize: 13.sp,
          fontWeight: FontWeight.w700,
        ),
        labelMedium: GoogleFonts.notoSans(
          color: const Color(0XFFFF1D1D),
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
        labelLarge: GoogleFonts.notoSans(
          color: const Color(0XFF252520),
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: GoogleFonts.notoSans(
          color: const Color(0XFF252520),
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: GoogleFonts.notoSans(
          color: const Color(0XFF616161),
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: GoogleFonts.notoSans(
          color: const Color(0XFF252520),
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
        ),
        titleLarge: GoogleFonts.notoSans(
          color: const Color(0XFF000000),
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: GoogleFonts.roboto(
          color: const Color(0XFF5D5FEF),
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
        ),
        titleSmall: GoogleFonts.notoSans(
          color: const Color(0XFFFF1D1D),
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
        ),
      );
  static TextTheme darktextTheme() => TextTheme(
        labelSmall: GoogleFonts.notoSans(
          color: const Color(0XFFFFFFFF),
          fontSize: 13.sp,
          fontWeight: FontWeight.w700,
        ),
        labelMedium: GoogleFonts.notoSans(
          color: const Color(0XFFFF1D1D),
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
        labelLarge: GoogleFonts.notoSans(
          color: const Color(0XFFFFFFFF),
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: GoogleFonts.notoSans(
          color: const Color(0XFFFFFFFF),
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: GoogleFonts.notoSans(
          color: const Color(0XFFFFFFFF),
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: GoogleFonts.notoSans(
          color: const Color(0XFFFFFFFF),
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
        ),
        titleLarge: GoogleFonts.notoSans(
          color: const Color(0XFFFFFFFF),
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: GoogleFonts.roboto(
          color: const Color(0XFFFFFFFF),
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: GoogleFonts.notoSans(
          color: const Color(0XFFE0E0E0),
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
        ),
      );
}

class AppColors {
  static const Color blackcolor = Color(0XFF252520);
  static const Color whitecolor = Color(0XFFFFFFFF);
  static const Color selectedIconColor = Color(0XFF767D88);
  static const Color iconColor = Color(0XFFD7D7D7);
  static const Color unselectedLableColor = Color(0XFFD9D9D9);
  static const Color tealColor = Color(0XFF74FBDE);
  static const Color blueColor = Color(0XFF3C41BF);
  static const Color arrowColor = Color(0XFF1D1D1D);
  static const Color borderColor = Color(0XFFCECECE);
  static const Color starColor = Color(0XFFFFD233);
  static const Color ratingcountcolor = Color(0XFFC4C4C4);
  static const Color lablecolor = Color(0XFFF0F0F0);
  static const Color lablecolor1 = Color(0XFF868686);
  static const Color sendiconcolor = Color(0XFFC8C8C8);
  static const Color grayColor = Color(0XFFEEEEEE);
  static const Color darkGrayColor = Color(0XFF616161);
  static const Color textgrayColor = Color(0XFFA0A0A0);
}
