import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropMenuAsistentesScreen extends StatelessWidget {
  const DropMenuAsistentesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> items = [
    'Todas las etiquetas',
    'Presencial',
    'Virtual',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: const [
              Icon(
                Icons.list,
                size: 16,
                color: Colors.black54,
              ),
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: Text(
                  'Todas las etiquetas',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          icon: const Icon(
            Icons.local_offer_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.black54,
          iconDisabledColor: Colors.grey,
          buttonHeight: 50,
          buttonWidth: double.infinity,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.transparent,
            ),
            color: Colors.blueGrey[400],
          ),
          //buttonElevation: 2,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: 200,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(14),
            color: Colors.blueGrey[400],
          ),
          dropdownElevation: 0,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}
