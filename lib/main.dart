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

//Receive the information about a bank transfer
class FormularyTransfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          //receive the account number to transfer
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(fontSize: 16.0),
              decoration: InputDecoration(
                  labelText: 'Account Number:', hintText: '0000'),
              keyboardType: TextInputType.number,
            ),
          ),
          //receive the value of the bank transfer
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(fontSize: 16.0),
              decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: 'Value(\$):',
                  hintText: '00.00'),
            ),
          ),
          //button to confirm the bank transfer
          const ElevatedButton(
            child: Text('Transfer'),
            onPressed: null,
          )
        ],
      ),
    );
  }
}

//Show the statement
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

//Show the transactions
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
      ),
    );
  }
}

//Realize the bank transfers
class Transfer {
  final double value;
  final int accountNumber;

  Transfer(this.value, this.accountNumber);
}
