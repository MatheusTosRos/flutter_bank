import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BancoHome(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class BancoHome extends StatelessWidget {
  const BancoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicação Bancária'),
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Conta Corrente'),
              subtitle: Text('Saldo: R\$ 1.500,00'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.savings),
              title: Text('Conta Poupança'),
              subtitle: Text('Saldo: R\$ 3.200,00'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Cartão de Crédito'),
              subtitle: Text('Limite: R\$ 5.000,00'),
            ),
          ),
        ],
      ),
    );
  }
}
