import 'package:ecommerce_assignment/utils/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

// The main entry point of the Ecommerce application.
// * This function initializes the Flutter framework, sets up the Hive database,
// * and runs the Ecommerce app with the initialized Hive box.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Directory appDocDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocDir.path);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) async {
// Open the Hive box with the name 'Ecommerce'.
// * The Hive box is used to store and retrieve data in the app.

    await Hive.openBox('Ecommerce').then(
// Run the Ecommerce app with the initialized Hive box.
      (value) => runApp(
        EcommereceApp(prefs: value),
      ),
    );
  });
}
