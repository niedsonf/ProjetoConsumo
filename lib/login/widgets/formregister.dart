import 'package:consumo/login/widgets/formbuttonstyle.dart';
import 'package:consumo/login/widgets/forminput.dart';
import 'package:consumo/login/widgets/formlabel.dart';
import 'package:consumo/model/appuser.dart';
import 'package:consumo/utils/auth.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  final AnimationController controller;
  const RegisterForm({Key? key, required this.controller}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late final Animation<Offset> _changeForm =
      Tween<Offset>(begin: Offset(1.5, 0), end: Offset(0, 0)).animate(
          CurvedAnimation(
              parent: widget.controller, curve: Curves.easeInOutBack));
  TextEditingController _nome = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _senha = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _changeForm,
      child: LabelForm(
        form: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormInput(
                    controller: _nome,
                    icon: Icon(Icons.account_circle, color: Color(0xFFCFCCFF)),
                    isPass: false,
                    name: "Nome"),
                SizedBox(height: 20),
                FormInput(
                    controller: _email,
                    icon: Icon(Icons.email, color: Color(0xFFCFCCFF)),
                    isPass: false,
                    name: "Email"),
                SizedBox(height: 20),
                FormInput(
                    controller: _senha,
                    icon: Icon(Icons.password, color: Color(0xFFCFCCFF)),
                    isPass: true,
                    name: "Senha"),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: () => widget.controller.reverse(),
                        child: Container(
                          width: 60,
                          //padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 45,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFF8880FF),
                                Color(0xFFBBB8E6)
                              ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          child:
                              Icon(Icons.arrow_back, color: Color(0xFF1B1766)),
                        )),
                    InkWell(
                      onTap: () {
                        Auth.cadastrar(
                          context: context, rUser: AppUser(nome: _nome.text, email: _email.text, senha: _senha.text)
                        );
                      },
                      child: FormButtonStyle(
                          content: Text("Cadastrar",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF1B1766),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1))),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
