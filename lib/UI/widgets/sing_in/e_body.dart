import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/components/txt_input_area.dart';
import 'package:clan_anime/UI/widgets/components/txt_input_field.dart';
import 'package:clan_anime/UI/widgets/components/txtfield_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class BodyE extends StatefulWidget {
  const BodyE({Key? key}) : super(key: key);

  @override
  State<BodyE> createState() => _BodyEState();
}

class _BodyEState extends State<BodyE> {
  final items = ['Masculino', 'Femenino', 'No Binario'];
  DateTime dateTime = DateTime.now();
  String? value;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        margin: EdgeInsets.only(bottom: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Información Extra',
                style: GoogleFonts.salsa(
                  color: kPrimaryColor,
                  fontSize: 29,
                ),
              ),
              TxtInputField(
                  hintText: 'Nombre', onChanged: (value) {}, size: 46),
              TxtFieldContainer(
                top_margin: 10,
                child: TextField(
                  onChanged: (value) => null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Correo Electrónico',
                    hintStyle: const TextStyle(color: kTercearyColor),
                  ),
                ),
              ),
              TxtFieldContainer(
                top_margin: 15,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () => popup_datepicker(context),
                    child: Text(
                      (DateFormat('MM/dd/yyyy').format(dateTime)).toString(),
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
              TxtFieldContainer(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: value,
                    items: items.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() => this.value = value),
                    hint: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sexo',
                        style: TextStyle(color: kTercearyColor),
                      ),
                    ),
                  ),
                ),
                top_margin: 10,
              ),
              const TxtAreaInput(),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> popup_datepicker(BuildContext context) {
    return showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
                actions: [
                  buildDatePicker(),
                ],
                cancelButton: CupertinoActionSheetAction(
                  child: Text('Listo'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )));
  }

  Widget buildDatePicker() => SizedBox(
        height: 180,
        child: CupertinoDatePicker(
            initialDateTime: DateTime.now(),
            minimumYear: DateTime.now().year - 110,
            maximumYear: null,
            maximumDate: DateTime.now(),
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (dateTime) =>
                setState(() => this.dateTime = dateTime)),
      );

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item, style: TextStyle(color: Colors.black)),
      );
}
