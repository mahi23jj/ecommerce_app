//import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
//import 'package:image_picker/image_picker.dart';

//import 'package:cached_network_image/cached_network_image.dart';

class StoreData {
  Future<String> uploadImageToStorage(String childName, Uint8List file) async {
    Reference ref = FirebaseStorage.instance.ref().child(childName);
    UploadTask uploadTask = ref.putData(file);

    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  Future<String> saveData({
    //required String name,
    required  Uint8List file,
  }) async {
    String resp = "Some error occurred";
    try {
      // ignore: unnecessary_null_comparison
      if (file != null) {
        String imageUrl = await uploadImageToStorage('profileimage', file);
        await FirebaseFirestore.instance.collection('UserProfile').add({
      //'name':name,
      'ImageLink': imageUrl,
    });
       

        resp = 'success';
      }
    } catch (err) {
      resp = err.toString();
    }
    return resp;
  }
  Future<String> save({
    //required String name,
    required  Uint8List file,required String name,required String disc,required String price
  }) async {
    String resp = "Some error occurred";
    try {
      // ignore: unnecessary_null_comparison
      if (file != null) {
        String imageUrl = await uploadImageToStorage('profileimage', file);
        await FirebaseFirestore.instance.collection('UserProfile').add({
      //'name':name,
      'ImageLink': imageUrl,
      'name': name,
      'price': price ,
      'discription': disc
    });
       

        resp = 'success';
      }
    } catch (err) {
      resp = err.toString();
    }
    return resp;
  }
 
}
 


//Future<Uint8List?> PickImage(ImageSource source) async {
  //final picker = ImagePicker();
 // final pickedFile = await picker.pickImage(source: source);
  

  
  
//}