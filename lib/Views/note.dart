import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxwithnotesapp/routes/notes_controller.dart';
import 'package:getxwithnotesapp/utils/colors.dart';

import '../Model/notes_model.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final titleController = TextEditingController();
    final descriptionsController = TextEditingController();
    final createdateController = DateTime.now();
    final controller=Get.put(NotesController());


    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              textInputAction: TextInputAction.done,
              style: const TextStyle(
                fontSize: 25,
              ),
              minLines: 1,
              maxLines: 2,

              decoration: const InputDecoration(
                hintText: 'Enter your Title',
                border: InputBorder.none,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: descriptionsController,
              style: const TextStyle(
                fontSize: 16,
              ),
              minLines: 1,
              maxLines: 5,


              decoration: const InputDecoration(
                hintText: 'Write Your Descriptions',
                border: InputBorder.none,
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: AppColors.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: MaterialButton(
                  height: 50,
                  onPressed: () {

                    if (titleController.text.isNotEmpty && descriptionsController.text.isNotEmpty) {

                      controller.addNotes(
                        NotesModel(
                          title: titleController.text,
                          descriptions: descriptionsController.text,
                          createdate: createdateController,
                        ),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Note added successfully!'),
                        ),
                      );

                      Get.back();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please fill in both title and descriptions.'),
                        ),
                      );
                    }
                  },


                  shape: const OutlineInputBorder(
                      borderRadius:BorderRadius.all(
                          Radius.circular(10))),
                  color: AppColors.primaryColor, // Choose your desired color
                  textColor: Colors.white,
                  child: const Text('Save Changes',style: TextStyle(
                    fontSize: 16,
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}