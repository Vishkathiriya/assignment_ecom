import 'package:ecommerce_assignment/utils/app_export.dart';

class EcommereceApp extends StatefulWidget {
  const EcommereceApp({super.key, required this.prefs});

  final Box prefs;

  @override
  State<EcommereceApp> createState() => _EcommereceAppState();
}

class _EcommereceAppState extends State<EcommereceApp> {
  @override
  Widget build(BuildContext context) {
    // Set the preferences object for the PrefObj singleton
    PrefObj.preferences = widget.prefs;
    return MultiBlocProvider(
        providers: [
          BlocProvider<ThemeBloc>(
            create: (context) => ThemeBloc(),
          ),
          BlocProvider<LocaleBloc>(
            create: (context) => LocaleBloc(),
          ),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, themeState) {
            return BlocBuilder<LocaleBloc, LocaleState>(
              builder: (context, localeState) {
                return AnnotatedRegion<SystemUiOverlayStyle>(
                  value: SystemUiOverlayStyle(
                      statusBarColor: Colors.transparent,
                      statusBarIconBrightness: themeState.isDarkThemeOn
                          ? Brightness.light
                          : Brightness.dark),
                  child: ScreenUtilInit(
                    designSize: Size(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height),
                    minTextAdapt: true,
                    splitScreenMode: true,
                    builder: (context, child) => ToastificationWrapper(
                      child: MaterialApp(
                        theme: themeState.isDarkThemeOn
                            ? EcommereceThemeHelper.darkTheme
                            : EcommereceThemeHelper.lightTheme,
                        debugShowCheckedModeBanner: false,
                        navigatorKey: NavigatorService.navigatorKey,
                        locale: localeState.locale,
                        supportedLocales: Lang.delegate.supportedLocales,
                        localizationsDelegates: const [
                          Lang.delegate,
                          GlobalMaterialLocalizations.delegate,
                          GlobalWidgetsLocalizations.delegate,
                          GlobalCupertinoLocalizations.delegate,
                        ],
                        title: 'Ecommerce`',
                        initialRoute: AppRoutes.initialRoute,
                        routes: AppRoutes.routes,
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}
