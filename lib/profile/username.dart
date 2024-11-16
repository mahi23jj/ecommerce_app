

//import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/add%20product/add_image%20.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



//import 'package:flutter/material.dart';





class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _profileState();
}

class _profileState extends State<Profilepage> {
  //final user = FirebaseAuth.instance.currentUser!;
   Uint8List? _imageBytes;
   final TextEditingController nameController =TextEditingController();
   Color colorPrimary = Color(0xFF6055D8);
   
 Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      final imageBytes = await pickedImage.readAsBytes();
      setState(() {
        _imageBytes = Uint8List.fromList(imageBytes);
      });
    }
  }

  // Simulate Firebase upload (replace with actual implementation)
Future<void> uploadImageToFirebase() async {
  if (_imageBytes == null) {
    print("No image selected");
    return;
  }

  try {
    final storageRef = FirebaseStorage.instance.ref().child('images/${DateTime.now()}.png');
    final uploadTask = storageRef.putData(_imageBytes!);

    await uploadTask.whenComplete(() {
      print("Image uploaded successfully!");
    });

    final downloadUrl = await storageRef.getDownloadURL();
    Map<String, dynamic> addItem = {
        "ImageLink": downloadUrl,
        "name":nameController.text.trim()
       
    };
     await addFoodItem(addItem);
    print("Download URL: $downloadUrl");
  } catch (e) {
    print("Error uploading image: $e");
  }
}
Future addFoodItem(Map<String,dynamic> userinfo) async{
      
        await FirebaseFirestore.instance
             .collection('UserProfile')
             .add(userinfo);
      
      }
 

  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back)),
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  _imageBytes!= null ?
                  CircleAvatar(
                      radius: 64,
                      backgroundImage:MemoryImage(_imageBytes!),
                  )
                  :
                 const  CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.mpXg7tyCFEecqgUsoW9eQwHaHk?w=184&h=187&c=7&r=0&o=5&dpr=1.5&pid=1.7'),
                  ),
                 Positioned(
                    child:  IconButton(
                      onPressed: pickImage,
                      icon: const Icon(Icons.add_a_photo),
                    ),
                    bottom: -10,
                    left: 80,
                  )
                ],
              )
            ],
          ),
          const Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Full Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
             controller:  nameController,
              decoration: InputDecoration(
                  hintText: 'FULL NAME',
                  prefixIcon: const Icon(
                    Icons.people,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 24,
            ),
          ),
          ElevatedButton(onPressed: uploadImageToFirebase,
           child:const  Text('save'),),
           SizedBox(height: 10,),
         ElevatedButton(
                  style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            foregroundColor: Colors.white,
                            backgroundColor: colorPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                  onPressed:()=>Navigator.push(context, MaterialPageRoute(builder: (context) => ImagePickerExample(),)),
                  child: Text('Add product'),
                ),
        ]
      ),
    );
  }
}