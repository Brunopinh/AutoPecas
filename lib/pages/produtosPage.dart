import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProdutosPage extends StatefulWidget {
  ProdutosPage({super.key});

  @override
  State<ProdutosPage> createState() => _ProdutosPageState();
}

class _ProdutosPageState extends State<ProdutosPage> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerCNPJ = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerTelefone = TextEditingController();
  TextEditingController _controllerEndereco = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Declaração das variáveis para dropdowns
  String? _selectedFornecedor;
  String? _selectedCategoria;

  // Listas de dados para os dropdowns
  List<String> _fornecedores = ['Fornecedor 1', 'Fornecedor 2', 'Fornecedor 3'];
  List<String> _categorias = ['Categoria 1', 'Categoria 2', 'Categoria 3'];

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
                        "Cadastre o Produto",
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
                      labelText: "Descrição",
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
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
                      labelText: "Preço de Custo",
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // Preço de Venda
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
                      labelText: "Preço de Venda",
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // Estoque Atual
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
                      labelText: "Estoque Atual",
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // Fornecedor Dropdown
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
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: "Fornecedor",
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                    value: _selectedFornecedor,
                    items: _fornecedores.map((String fornecedor) {
                      return DropdownMenuItem<String>(
                        value: fornecedor,
                        child: Text(
                          fornecedor,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedFornecedor = newValue!;
                      });
                    },
                    dropdownColor: Colors.indigo,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              // Categoria Dropdown
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
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: "Categoria",
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                    value: _selectedCategoria,
                    items: _categorias.map((String categoria) {
                      return DropdownMenuItem<String>(
                        value: categoria,
                        child: Text(
                          categoria,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedCategoria = newValue!;
                      });
                    },
                    dropdownColor: Colors.indigo,
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
