import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../widgets/custom_input_field.dart';

class EditarPerfilScreen extends StatefulWidget {
  const EditarPerfilScreen({Key? key}) : super(key: key);

  @override
  State<EditarPerfilScreen> createState() => _EditarPerfilScreenState();
}

class _EditarPerfilScreenState extends State<EditarPerfilScreen> {
  File? _image;
  String? imagePath;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'name': 'Daniel',
      'empresa': 'TDM',
      'cargo': 'Scrum Master',
      'biografia': 'Una pequeña bio',
      'web': 'https://',
      'twitter': 'https://',
      'linkedIn': 'https://',
      'facebook': 'https://',
      'instagram': 'https://',
      'youtube': 'https://',
      'otra': 'https://',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi cuenta'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext bc) {
                            return SafeArea(
                              child: Wrap(
                                children: <Widget>[
                                  ListTile(
                                      leading: new Icon(Icons.photo_library),
                                      title: new Text('Elegir de la galería'),
                                      onTap: () async {
                                        final ImagePicker _picker =
                                            ImagePicker();
                                        PickedFile? _pickedFile =
                                            await _picker.getImage(
                                                source: ImageSource.gallery);
                                        Navigator.of(context).pop();
                                        imagePath = _pickedFile!.path;
                                        setState(() {});
                                      }),
                                  ListTile(
                                    leading: new Icon(Icons.photo_camera),
                                    title: new Text('Tomar una foto'),
                                    onTap: () async {
                                      final ImagePicker _picker = ImagePicker();
                                      PickedFile? _pickedFile = await _picker
                                          .getImage(source: ImageSource.camera);
                                      Navigator.of(context).pop();
                                      imagePath = _pickedFile!.path;
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: (Colors.blueGrey),
                      child: imagePath != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(
                                File(
                                  imagePath!,
                                ),
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitHeight,
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(50)),
                              width: 100,
                              height: 100,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey[800],
                              ),
                            ),
                    ),
                  ),
                ),
                Form(
                  //Se asigna la key dentro del form
                  key: myFormKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        //color: Colors.amber,
                        width: double.infinity,
                        child: Text(
                          'Nombre',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          //textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomInputField(
                        labelText: 'Nombre Completo',
                        hintText: 'Nombre del usuario',
                        formProperty: 'name',
                        formValues: formValues,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        //color: Colors.amber,
                        width: double.infinity,
                        child: Text(
                          'Empresa',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          //textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomInputField(
                        labelText: 'Empresa',
                        hintText: 'Empresa a la que pertenece',
                        formProperty: 'empresa',
                        formValues: formValues,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        //color: Colors.amber,
                        width: double.infinity,
                        child: Text(
                          'Cargo',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          //textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomInputField(
                        labelText: 'Cargo',
                        hintText: 'Cargo del usuario',
                        formProperty: 'cargo',
                        formValues: formValues,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        //color: Colors.amber,
                        width: double.infinity,
                        child: Text(
                          'Biografía',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          //textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomInputField(
                        labelText: 'Biografía',
                        hintText: 'Biografía del usuario',
                        formProperty: 'biografia',
                        formValues: formValues,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        //color: Colors.amber,
                        width: double.infinity,
                        child: Row(
                          children: const [
                            Icon(Icons.language_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Sitio Web',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              //textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomInputField(
                        labelText: 'Web',
                        hintText: 'Cargo del usuario',
                        formProperty: 'web',
                        formValues: formValues,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        //color: Colors.amber,
                        width: double.infinity,
                        child: Row(
                          children: const [
                            Icon(Icons.language_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Twitter',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              //textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomInputField(
                        labelText: 'Twitter',
                        hintText: 'Twitter del usuario',
                        formProperty: 'twitter',
                        formValues: formValues,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        //color: Colors.amber,
                        width: double.infinity,
                        child: Row(
                          children: const [
                            Icon(Icons.language_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'LinkedIn',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              //textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomInputField(
                        labelText: 'LinkedIn',
                        hintText: 'LinkedIn del usuario',
                        formProperty: 'linkedIn',
                        formValues: formValues,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        //color: Colors.amber,
                        width: double.infinity,
                        child: Row(
                          children: const [
                            Icon(Icons.language_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              //textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomInputField(
                        labelText: 'Facebook',
                        hintText: 'Facebook del usuario',
                        formProperty: 'facebook',
                        formValues: formValues,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        //color: Colors.amber,
                        width: double.infinity,
                        child: Row(
                          children: const [
                            Icon(Icons.language_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Instagram',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              //textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomInputField(
                        labelText: 'Instagram',
                        hintText: 'Instagram del usuario',
                        formProperty: 'instagram',
                        formValues: formValues,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        //color: Colors.amber,
                        width: double.infinity,
                        child: Row(
                          children: [
                            const Icon(Icons.language_outlined),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Youtube',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              //textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomInputField(
                        labelText: 'Youtube',
                        hintText: 'Youtube del usuario',
                        formProperty: 'youtube',
                        formValues: formValues,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        //color: Colors.amber,
                        width: double.infinity,
                        child: Row(
                          children: [
                            const Icon(Icons.language_outlined),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Otra red social',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              //textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomInputField(
                        labelText: 'Otra red social',
                        hintText: 'Otra red del usuario',
                        formProperty: 'otra',
                        formValues: formValues,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        child: const SizedBox(
                            width: 80,
                            child: Center(
                              child: Text('Guardar'),
                            )),
                        onPressed: () {
                          //Remover el teclado / minimizarlo
                          FocusScope.of(context).requestFocus(FocusNode());

                          //Condici+on para saber si las validaciones son válidas.
                          if (!myFormKey.currentState!.validate()) {
                            print('Formulario no válido');
                            return;
                          }
                          print(formValues);
                        },
                        style:
                            ElevatedButton.styleFrom(primary: Colors.blueGrey),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
