class Conta<T> {
  T tipoConta;
  double saldo;

  Conta(this.tipoConta, this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      print('Saldo insuficiente!');
    }
  }

  @override
  String toString() {
    return 'Tipo: $tipoConta, Saldo: $saldo';
  }
}

void main() {
  var contaCorrente = Conta<String>('Corrente', 1000.0);
  var contaPoupanca = Conta<String>('Poupança', 1500.0);

  contaCorrente.depositar(500);
  contaCorrente.sacar(200);

  contaPoupanca.sacar(300);

  print(contaCorrente); // Tipo: Corrente, Saldo: 1300.0
  print(contaPoupanca); // Tipo: Poupança, Saldo: 1200.0
}
