import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FornecedorPage extends StatefulWidget {
  FornecedorPage({super.key});

  @override
  State<FornecedorPage> createState() => _FornecedorPageState();
}

class _FornecedorPageState extends State<FornecedorPage> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerCNPJ = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerTelefone = TextEditingController();
  TextEditingController _controllerEndereco = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                        "Cadastre o Fornecedor",
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
              // Nome
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
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'[a-zA-Z\s]')), // Permitir apenas letras
                    ],
                    keyboardType: TextInputType.name,
                    controller: _controllerNome,
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
              // CNPJ
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
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(14),
                    ],
                    keyboardType: TextInputType.number,
                    controller: _controllerCNPJ,
                    decoration: InputDecoration(
                      labelText: "CNPJ",
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
              // Email
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
                    keyboardType: TextInputType.emailAddress,
                    controller: _controllerEmail,
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
              // Telefone
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
                    keyboardType: TextInputType.phone,
                    controller: _controllerTelefone,
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
              // Endereço
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
                    keyboardType: TextInputType.streetAddress,
                    controller: _controllerEndereco,
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
              // Botão Enviar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    fixedSize: Size(200, 50),
                  ),
                  onPressed: () {
                    // Implementar lógica de cadastro
                  },
                  child: Text("Enviar",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
