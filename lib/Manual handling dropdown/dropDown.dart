import 'package:boiler/Constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class dropDown extends StatefulWidget {
  String? selectedItem = "L";


  dropDown({Key? key, this.selectedItem}) : super(key: key);

  @override
  State<dropDown> createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {
  List DropDownList=[
    "L",
    "M",
    "H"
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      borderRadius: BorderRadius.circular(10),
      dropdownColor: Colors.green,
      style: TextStyle(color: Colors.white),
      // hint: const Text("Select Bus"),
      icon: const Icon(Icons.keyboard_arrow_down),
      // value: selectedItemBus.isEmpty ? selectedItem : selectedItemBus,
      value: widget.selectedItem,
      isExpanded: true,
      elevation: 0,
      underline: Container(color: Colors.transparent),
      items: DropDownList
          .map(
            (title) => DropdownMenuItem(
          child: Text(title,textAlign: TextAlign.center, style: TextStyle(
              fontFamily: 'Poppins',
                  color: Colors.black,

          ),),
          value: title,
        ),
      )
          .toList(),
      onChanged: (value) {
        setState(() {
          widget.selectedItem = value.toString();
          select = widget.selectedItem!;
          print(widget.selectedItem);
        });
      },

    );}}