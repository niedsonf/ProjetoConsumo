import 'package:consumo/login/widgets/formbuttonstyle.dart';
import 'package:consumo/login/widgets/forminput.dart';
import 'package:consumo/themes/customtheme.dart';
import 'package:flutter/material.dart';

class AddDialog extends StatefulWidget {
  late Animation<double> _scaleDialog;
  late Animation<double> _fadeContent;
  final AnimationController AController;
  AddDialog({Key? key, required this.AController})
      : _scaleDialog = CurvedAnimation(
            parent: AController,
            curve: Interval(0, 0.5, curve: Curves.fastOutSlowIn)),
        _fadeContent = CurvedAnimation(
            parent: AController,
            curve: Interval(0.2, 1, curve: Curves.easeOutQuad)),
        super(key: key);

  @override
  _AddDialogState createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
  TextEditingController _id = TextEditingController();
  TextEditingController _name = TextEditingController();

  @override
  void initState() {
    widget.AController.forward();
    super.initState();
  }

  @override
  void dispose() {
    widget.AController.reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: CustomTheme.darkMode,
      child: ScaleTransition(
        scale: widget._scaleDialog,
        child: Dialog(
          backgroundColor: Color(0xFF1B1766),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color(0xFFCFCCFF),
              ),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  topLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28))),
          child: Container(
            padding: EdgeInsets.all(16),
            child: FadeTransition(
              opacity: widget._fadeContent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Cadastre o Sensor",
                      style: TextStyle(fontSize: 20, color: Color(0xFFCFCCFF))),
                  SizedBox(height: 20),
                  FormInput(
                      controller: _id,
                      icon: Icon(Icons.settings_applications,
                          color: Color(0xFFCFCCFF)),
                      isPass: false,
                      name: "ID"),
                  SizedBox(height: 20),
                  FormInput(
                      controller: _name,
                      icon: Icon(Icons.house, color: Color(0xFFCFCCFF)),
                      isPass: false,
                      name: "Cômodo"),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => widget.AController.reverse()
                            .then((_) => Navigator.pop(context)),
                        child: FormButtonStyle(
                            content: Icon(
                          Icons.arrow_back,
                          color: Color(0xFF1B1766),
                        )),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: FormButtonStyle(
                            content: Text("Adicionar",
                                style:
                                    TextStyle(fontSize: 18, letterSpacing: 1))),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
