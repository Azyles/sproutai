//Package Imports
import 'package:flutter/material.dart';


//Main Run Command
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final LocalAuthentication auth = LocalAuthentication();

  var authInstance = Auth();

  /*

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      authenticated = await auth.authenticateWithBiometrics(
          localizedReason: 'Scan your fingerprint to authenticate',
          useErrorDialogs: true,
          stickyAuth: true).then((_){
        Future.delayed(Duration(milliseconds: 2000)).then((_){
          Navigator.push(context, MaterialPageRoute(builder: (context) => MainFrame()));
        });
      });

      print("AUTH: " + authenticated.toString());


    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    setState(() {
      var _authorized = message;
    });
  }

   */

  @override
  void initState() {
    Firebase.initializeApp();
    //updateData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(21, 21, 21, 1),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
