import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClientePage extends StatefulWidget {
  ClientePage({super.key});

  @override
  State<ClientePage> createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerCpfCnpj = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerTelefone = TextEditingController();
  TextEditingController _controllerEndereco = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _errorTextNome;
  String? _errorTextCpfCnpj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.indigo,
                        width: 3,
                      ),
                    ),
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                      child: Text(
                        "Cadastre o Cliente",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.indigo,
                      width: 3,
                    ),
                  ),
                  child: TextFormField(
                    controller: _controllerNome,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "Nome",
                      labelStyle: TextStyle(color: Colors.black),
                      border: null,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.indigo,
                      width: 3,
                    ),
                  ),
                  child: TextFormField(
                    controller: _controllerCpfCnpj,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "CPF ou CNPJ",
                      labelStyle: TextStyle(color: Colors.black),
                      border: null,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.indigo,
                      width: 3,
                    ),
                  ),
                  child: TextFormField(
                    controller: _controllerEmail,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.black),
                      border: null,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.indigo,
                      width: 3,
                    ),
                  ),
                  child: TextFormField(
                    controller: _controllerTelefone,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Telefone",
                      labelStyle: TextStyle(color: Colors.black),
                      border: null,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.indigo,
                      width: 3,
                    ),
                  ),
                  child: TextFormField(
                    controller: _controllerEndereco,
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                      labelText: "Endereço",
                      labelStyle: TextStyle(color: Colors.black),
                      border: null,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    fixedSize: Size(200, 50),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Enviar",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
