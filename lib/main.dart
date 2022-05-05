import 'package:flutter/material.dart';

void main() => runApp(bytebank());

class bytebank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularyTransfer(),
      ),
    );
  }
}

class FormularyTransfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
    );
  }
}

class TranferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TransferItem(Transfer(100.50, 00444 - 5)),
          TransferItem(Transfer(150.90, 00464 - 5)),
          TransferItem(Transfer(10.05, 00449 - 2)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
    );
  }
}

class TransferItem extends StatelessWidget {
  final Transfer _transfer;

  TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: const Icon(Icons.monetization_on),
      title: Text("Value: \$" + _transfer.value.toString()),
      subtitle: Text("Account number " + _transfer.accountNumber.toString()),
    ));
  }
}

class Transfer {
  final double value;
  final int accountNumber;

  Transfer(this.value, this.accountNumber);
}
