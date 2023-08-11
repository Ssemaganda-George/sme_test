import 'package:flutter/material.dart';
import 'package:charify/screens/splash_screen.dart';
import 'package:charify/screens/welcome_screen.dart'; // Import the WelcomeScreen
import 'package:charify/screens/login_screen.dart'; // Import the LoginScreen
import 'package:charify/screens/signup_screen.dart'; // Import the SignUpScreen
import 'package:charify/screens/campaigns_screen.dart'; // Import the CampaignsScreen
import 'package:charify/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:charify/screens/exportsScreens.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Charify',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/splash', // Set the initial route
      routes: {
        '/splash': (context) => SplashScreen(), // Define the SplashScreen route
        '/': (context) => WelcomeScreen(), // Define the WelcomeScreen route
        '/home': (context) => HomePage(),
        '/article': (context) => Article(),
        '/login': (context) => LoginScreen(), // Define the LoginScreen route
        '/signup': (context) => SignUpScreen(), // Define the SignUpScreen route
        '/campaigns': (context) =>
            CampaignsScreen(), // Define the CampaignsScreen route
        EducationPage.id: (context) => EducationPage(),
        SeniorPage.id: (context) => SeniorPage(),
        Article.id: (context) => Article(),
        EHelp.id: (context) => EHelp(),
        Clothes.id: (context) => Clothes(),
        Health.id: (context) => Health(),

        // Add more routes for other screens
      },
    );
  }
}

// TEST SCRIPT
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State createState() => _MyAppState();
// }

// class _MyAppState extends State {
//   late GoogleMapController mapController;

//   final LatLng _center = const LatLng(-33.86, 151.20);

//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Maps Sample App'),
//           backgroundColor: Colors.green[700],
//         ),
//         body: GoogleMap(
//           onMapCreated: _onMapCreated,
//           initialCameraPosition: CameraPosition(
//             target: _center,
//             zoom: 11.0,
//           ),
//         ),
//       ),
//     );
//   }
// }
