part of 'api.dart';

mixin FireBase on BaseAPI {
  FirebaseAuth _firebaseAuth;
  //GoogleSignIn _gSignin;
  User firebaseUser;

  initializeFirebase() async {
    await Firebase.initializeApp();
  }

  // Future<bool> isFirebaseSignedIn() async {
  //   _gSignin ??= GoogleSignIn();
  //   return await _gSignin.isSignedIn();
  // }

  // Future<User> signinFirebase() async {
  //   _firebaseAuth ??= FirebaseAuth.instance;
  //   if (await isFirebaseSignedIn()) {
  //     firebaseUser = _firebaseAuth.currentUser;
  //   } else {
  //     final account = await _gSignin.signIn();
  //     final auth = await account.authentication;
  //     final oAuthCred = GoogleAuthProvider.credential(
  //         idToken: auth.idToken, accessToken: auth.accessToken);
  //     final userCred = (await _firebaseAuth.signInWithCredential(oAuthCred));
  //     if (await isFirebaseSignedIn()) {
  //       verifyFirebaseToken(await userCred.user.getIdToken());
  //       firebaseUser = userCred?.user;
  //     } else {
  //       firebaseUser = null;
  //     }
  //   }
  //   return firebaseUser;
  // }

  signOutFirebase() async {
    _firebaseAuth ??= FirebaseAuth.instance;
    await _firebaseAuth.signOut();
  }

  Stream<User> get authState => _firebaseAuth.idTokenChanges();
}
