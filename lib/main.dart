import 'package:boiler/provider/ASHPprovider.dart';
import 'package:boiler/view/SplashScreen/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApp());
}
// void main()  async{
//  WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);
//   await Firebase.initializeApp();
//   runApp( MyApp());

// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ASHPProvider(),
        ),
      ],
      child: ScreenUtilInit(
          designSize: const Size(390, 844),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return GetMaterialApp(
                debugShowCheckedModeBanner: false, home: SplashScreen()
                // CompleteMcsBenchMark()
                // CustomerSatisficationQuestionair()
                // PostInstallationAshp()
                // InstallMenuOfAshp()
                // CustomerDetailForAshp()
                // RequiredPicture()
                // ElectricalSystem()
                // SplashScreen()
                );
          }),
    );
  }
}
