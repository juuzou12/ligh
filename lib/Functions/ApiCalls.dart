// ignore: import_of_legacy_library_into_null_safe
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ApiCalls {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final fireStoreInstance = Firestore.instance;
  final String userCollectionName="allUserDetails";
  final StorageReference storageReference = FirebaseStorage.instance.ref();

  /// account management api calls*/
  /*making login api call to firebase*/
  void loginApiCall(String email, String password, onSuccess,
      onWrongCred, onNotFound) async {
    /*printing out the email*/
    print("---email sent:--[$email]--");
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      /*using the userCredential to know the user state by printing*/
      print(
          "---user email:[${userCredential.user.email}]---user token:[${userCredential.credential.token}]");

      User userState = FirebaseAuth.instance.currentUser;
      // ignore: unnecessary_null_comparison
      if (userState != null) {
        onSuccess();
        /*print a msg to show that onSuccess happened*/
        print("---onSuccess complete [user logged in]");
      }
    } on FirebaseAuthException catch (exception) {
      switch (exception.code) {
        case "user-not-found":
          print("---user-not-found---");
          onNotFound();
          break;
        case "wrong-password":
          print("---wrong-password---");
          onWrongCred();
          break;
      }
    }
  }

  /*checking the currentUserState to handle UI changes*/
  void userState(isLoggedIn, isLoggedOut) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      isLoggedIn();
    } else {
      isLoggedOut();
    }
  }

  /*handling the forget password api call to firebase*/
  void forgotPassword(String email) async {
    var forgetRequest =
        await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  /*verifying the user email*/
  void verifyEmail(User user)async{
    // ignore: unnecessary_null_comparison
    if(user != null && !user.emailVerified){
      var inAppLinkVerification=ActionCodeSettings(
          url: 'https://www.example.com/?email=${user.email}',
        dynamicLinkDomain: 'example.page.link',
        androidPackageName: 'com.example.android',
        androidInstallApp: true,
        androidMinimumVersion: '12',
        iOSBundleId: 'com.example.ios',
        handleCodeInApp: true,);
      await user.sendEmailVerification(inAppLinkVerification);
    }
  }

  /*delete an account*/
  void changeUserInfo(String username,String imageUrl,String bio,String phoneNumber,String userCollectionDocId,onSuccess,onFailure)async{
    /*printing out the data sent to firebase*/
    print("---username:[$username]---imageUrl:[$imageUrl]---bio:[$bio]---phoneNo:[$phoneNumber]---");

    fireStoreInstance.collection(userCollectionName).
    doc(userCollectionDocId)
    .update({
      'username':username,
      'imageUrl':imageUrl,
      'bio':bio,
      'phoneNumber':phoneNumber,
    }).then((value) => {
      onSuccess(),
    });
  }

  /*creating user using email and password for signUp*/
  void signUpApiCall(String email, String password, onSuccess,
      onWrongCred,onExists)async{
    try{
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      // ignore: unnecessary_null_comparison
      if(userCredential!=null){
        onSuccess();
      }
    } on FirebaseAuthException catch (e){
      switch (e.code){
        case "weak-password":
          print("---weak-password--");
          onWrongCred();
          break;
          case "email-already-in-use":
          print("---email-already-in-use--");
          onExists();
          break;
      }
    }
  }

  /*adding user details to the firebase store after account was created*/
  void addUserDetails(String imageUrl,String username, String bio,String phoneNumber,
      String fullName,String location,int followers,int following,int posts,onSuccess){
    /*print out the data be sent to the firebase store*/
    print("---imageUrl;[$imageUrl]--username:[$username]--follower:[$followers]--");
    /*this is the format at which the documentId will be generated*/

    final String userCollectionDocId;
    userCollectionDocId='${_firebaseAuth.currentUser.uid}-${DateTime.now().microsecondsSinceEpoch}';

    fireStoreInstance
        .collection(userCollectionName)
        .doc(userCollectionDocId)
        .set({
      'username':username,
      'bio':bio,
      'phoneNumber':phoneNumber,
      'location':location,
      'fullName':fullName,
      'followers':followers,
      'following':following,
      'userCollectionDocId':userCollectionDocId,
      'posts':posts,
      'imageUrl':imageUrl,
      'uuid':_firebaseAuth.currentUser.uid,
      'time':DateTime.now().microsecondsSinceEpoch
    }).then((value) => {
      onSuccess()
    });
  }

  /*adding the user image to the firebase cloud and getting the imageUrl that will be used to download it from the server*/
  void imageUpload(File imageFile, String imageUrl,onSuccess,onFailed)async{
    /*printing the file*/
    print("---file name: [$imageFile]");
    try{
      StorageUploadTask uploadTask=storageReference
          .child('/user_images')
          .child('userId:${_firebaseAuth.currentUser.uid}-${DateTime.now().microsecondsSinceEpoch}')
          .putFile(imageFile);
      StorageTaskSnapshot storageTaskSnapshot = await uploadTask.onComplete;
      imageUrl=await storageTaskSnapshot.ref.getDownloadURL();

      // ignore: unnecessary_null_comparison
      if(imageUrl!=null){
        onSuccess();
      }

    } on FirebaseAuthException catch(e){
      onFailed();
    }
  }

  /*verifying the user phone number by receiving a verification code*/
  void phoneNumberVerification(String phoneNumber,String code,onSuccess,onFailed,onCodeSent,onRetrieval)async{
    /*note here that the number should start with the country code then number*/
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async{
        // Sign the user in (or link) with the auto-generated credential
        await _firebaseAuth.signInWithCredential(credential);
        onSuccess();
      },
      verificationFailed: (FirebaseAuthException e) {
        /*"when code has not been sent*/
        switch (e.code){
          case 'invalid-phone-number':
            print('---invalid-phone-number---');
            onFailed();
        }

      },
      codeSent: (String verificationId, int? resendToken) async{
        /*when code is sent*/
        // Update the UI - wait for the user to enter the SMS code
        String smsCode = code;

        // Create a PhoneAuthCredential with the code
        AuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);

        // Sign the user in (or link) with the credential
        await _firebaseAuth.signInWithCredential(credential);
        onCodeSent();
      },timeout: const Duration(seconds: 60),
      codeAutoRetrievalTimeout: (String verificationId) {
        /*failed to auto retrieve*/
        onRetrieval();
      },
    );
  }

  /*making a signOut api call to firebase */
  void signOut(onSignOut)async{
    _firebaseAuth.signOut();
    if(_firebaseAuth.currentUser==null){
      onSignOut();
    }
  }

  /// uploads and post management api calls*/

  final String collectionName="userPosts";
  final String seriesCollectionName="mediaPost";

  /*upload a collection*/
  void uploadCollection(String title, String comment, List<String> itemIDs,onSuccess,onFailed){
    /*collection includes a group of posts/ stories/ storeItems*/
    print("---title:[$title]---comment:[$comment]---listOfItemIDs:[$itemIDs]--");

    try{
      final String userCollectionDocId;
      userCollectionDocId='${_firebaseAuth.currentUser.uid}-${DateTime.now().microsecondsSinceEpoch}';

      fireStoreInstance.collection(userCollectionName).doc(userCollectionDocId)
          .set({
        "userCollectionDocId":userCollectionDocId,
        "title":title,
        "comment":comment,
        "itemIDs":itemIDs,
        "time":DateTime.now().microsecondsSinceEpoch,
        "key":"-collection-"
      }).then((value) =>{
        onSuccess()
      });
    }catch (e){
      onFailed();
      print(e.toString());
    }

  }

  /*upload media & entertainment*/
  void uploadMedia(String episodeTitle, String episodePlot,String videoUrl){
    /*print out the data been sent to the firebase*/
    print("---episodeTitle:[$episodeTitle]----episodePlot:[$episodePlot]----videoUrl:[$videoUrl]");
  }
  /*creating a new media series*/
  void createNewSeries(String seriesTitle, String description, String category, String seriesCover){
    /*print out the data been sent to the firebase*/
    print("---seriesTitle:[$seriesTitle]----description:[$description]----category:[$category]-----seriesCover:[$seriesCover]");
    final String userCollectionDocId;
    userCollectionDocId='${_firebaseAuth.currentUser.uid}-${DateTime.now().microsecondsSinceEpoch}';
    fireStoreInstance
        .collection(seriesCollectionName)
        .doc(userCollectionDocId)
        .set({
      "seriesTitle":seriesTitle,
      "description":description,
      "category":category,
      'userCollectionDocId':userCollectionDocId,
      "seriesCover":seriesCover,
      'time':DateTime.now().microsecondsSinceEpoch
    });
  }
  /*upload series cover image to firebase storage*/
  void uploadSeriesCover(File seriesImageFile, String seriesCover){
    /*print out the data been sent to the firebase*/
    print("---seriesImageFile:[$seriesImageFile]----seriesCover:[$seriesCover]");
  }
}
