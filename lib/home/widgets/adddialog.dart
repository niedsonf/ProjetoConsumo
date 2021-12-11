import 'package:consumo/login/widgets/formbuttonstyle.dart';
import 'package:consumo/login/widgets/forminput.dart';
import 'package:consumo/login/widgets/formlabel.dart';
import 'package:consumo/themes/customtheme.dart';
import 'package:flutter/material.dart';

class AddDialog extends StatefulWidget {
  const AddDialog({Key? key}) : super(key: key);

  @override
  _AddDialogState createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
  TextEditingController _id = TextEditingController();
  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: CustomTheme.darkMode,
      child: Dialog(
        backgroundColor: Color(0xFF1B1766),
        elevation: 2,
        
        child: LabelForm(
            form: Form(
          child: Row(
            children: [
              FormInput(
                  controller: _id,
                  icon: Icon(Icons.tag),
                  isPass: false,
                  name: "ID do Sensor"),
              SizedBox(height: 10),
              FormInput(
                  controller: _name,
                  icon: Icon(Icons.tablet_android),
                  isPass: false,
                  name: "Nome do Ambiente"),
              SizedBox(height: 10),
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: FormButtonStyle(content: Icon(Icons.arrow_back)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: FormButtonStyle(
                        content: Text("Adicionar",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF1B1766),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1))),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
