import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:ecommerce/Home/bottom.dart';
import 'package:ecommerce/class/module.dart';
import 'package:firebase_storage/firebase_storage.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';




class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
   TextEditingController pn = TextEditingController();
  TextEditingController pr = TextEditingController();
  TextEditingController ds= TextEditingController();
  Color colorPrimary = Color(0xFF6055D8);
    List<String> _selectedItems = [];
  List<Item> items = [
  Item(id: '1', name: 'small'),
  Item(id: '2', name: 'medium'),
  Item(id: '3', name: 'large'),
  // Add more items as needed
];
final ImagePicker _picker = ImagePicker();
  File? selectedImage;
  

   Future getImage() async {
    var image = await _picker.pickImage(source: ImageSource.gallery);
    selectedImage = File(image!.path);
    setState(() {});
  }


   
  
  uploadItem() async {
    
    if (selectedImage != null &&
        pn.text.trim() != "" &&
        pr.text.trim() != "" &&
        ds.text.trim() != "") {
      String addId = randomAlphaNumeric(10);

      Reference firebaseStorageRef =
          FirebaseStorage.instance.ref().child("blogImages").child(addId);
      final UploadTask task = firebaseStorageRef.putFile(selectedImage!);
      var snapshot = await task.whenComplete(() => null);
      var downloadUrl = await snapshot.ref.getDownloadURL();

      Map<String, dynamic> addItem = {
        "ImageLink": downloadUrl,
        "Name": pn.text.trim(),
        "Price":pr.text.trim(),
        "Detail": ds.text.trim(),
        "selecteditem":_selectedItems
      };
      await addFoodItem(addItem);
        }
    
  }
      Future addFoodItem(Map<String,dynamic> userinfo) async{
      
        await FirebaseFirestore.instance
             .collection('cap')
             .add(userinfo);
      
      }
      Future adduser(String name,String disc,String price )async{
     await FirebaseFirestore.instance.collection('cap').add({
      'name': name,
       'price': price ,
       'discription': disc
  });
}

   



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Heading part
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Add New Product',
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: ' GoogleFonts.lato',
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 30),
                OutlinedButton.icon(
                  onPressed: () {
                     getImage();
                  },
                  //upload image part
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    foregroundColor: colorPrimary,
                    backgroundColor: Colors.white,
                    side:  BorderSide(color: colorPrimary, width: 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  icon: const Icon(Icons.file_upload_outlined),
                  label: const Text('Upload product Picture'),
                ),
                const SizedBox(
                  height: 30,
                ),

                // Product Name field
                TextField(
                  controller: pn,
                  decoration: const InputDecoration(
                      labelText: "Product name",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                 
                ),
                const SizedBox(
                  height: 30,
                ),

                // Product Price field
                TextField(
                  controller: pr,
                  decoration: const InputDecoration(
                      labelText: "Product price",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                 
                ),
                const SizedBox(
                  height: 30,
                ),

                // Product Description field
                TextField(
                  controller: ds,
                  decoration: const InputDecoration(
                      labelText: "Product Description",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  maxLines: 5,
                  
                ),

                // Sizes
                const SizedBox(height: 50),

                const Text(
                  'Product Size',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 20),
                 
                 DropdownButtonFormField2<String>(
      value: _selectedItems.isNotEmpty ? _selectedItems[0] : null,
      decoration: const InputDecoration(
        labelText: 'Select items',
        border: OutlineInputBorder(),
      ),
      hint: Text('Select items'),
      onChanged: (value) {
        setState(() {
          if (_selectedItems.contains(value)) {
            _selectedItems.remove(value);
          } else {
            _selectedItems.add(value!);
          }
        });
      },
      items: items
          .map((item) => DropdownMenuItem<String>(
                value: item.id,
                child: Text(item.name),
              ))
          .toList(),
    ),


                const SizedBox(
                  height: 80,
                ),

                //Add new product button
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        foregroundColor: Colors.white,
                        backgroundColor: colorPrimary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {
                        uploadItem();
                       // adduser(pn.text.trim(),pr.text.trim(),ds.text.trim(),);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AnimatedBottomBar(),));
                      },
                      child: const Text('Add New Product'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
