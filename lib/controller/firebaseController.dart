import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Rx<User?> user = Rx<User?>(null);

  // Getter for the user's state
  User? get currentUser => user.value;

  // Function to sign in with Google
  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final UserCredential authResult =
          await _auth.signInWithCredential(credential);
      user.value = authResult.user;
    } catch (e) {
      // Handle the error, e.g., show a snackbar or dialog
      print("Error signing in with Google: $e");
    }
  }

  // Function to sign out
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      user.value = null;
    } catch (e) {
      // Handle the error, e.g., show a snackbar or dialog
      print("Error signing out: $e");
    }
  }

  // You can add more Firebase-related functions as needed (e.g., sign-up, password reset, Firestore interactions, etc.)
}
