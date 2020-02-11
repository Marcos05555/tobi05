import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
            ThemeData(brightness: Brightness.dark, primaryColor: Colors.green),
        home: Scaffold(
            //body: ListadeUsuarios('marcos','vinicius'),
            body: ListadeUsuarios()));
  }
}

class ListadeUsuarios extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListadeUsuariosState();
  }
}

class Valor extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Transferênciassssseeeeeeeeee')),
        /*body:TextField(obscureText: true, decoration :InputDecoration(border: OutlineInputBorder(),labelText:'senha')) ,*/
        body: Lista0(_controladorNome, _controladorValor));
  }
}

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;
  final TextInputType teclado;

  Editor({this.controlador, this.rotulo, this.dica, this.icone, this.teclado});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
      child: TextField(
        controller: controlador,
        keyboardType: teclado,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
            icon: Icon(icone),
            border: OutlineInputBorder(),
            labelText: rotulo,
            hintText: dica),
      ),
    );
  }
}

class Lista0 extends StatefulWidget {
  final TextEditingController controladorNome1;
  final TextEditingController controladorValor1;
  Lista0(this.controladorNome1, this.controladorValor1);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Lista0State(controladorNome1, controladorValor1);
  }
}

class Lista0State extends State<Lista0>{
  final TextEditingController controladorNome1;
  final TextEditingController controladorValor1;
  Lista0State(this.controladorNome1, this.controladorValor1);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Editor(
              controlador: controladorNome1,
              rotulo: 'Nome',
              dica: 'Usuário',
              icone: Icons.people,
              teclado: TextInputType.text),
          Editor(
              controlador: controladorValor1,
              rotulo: 'Valor',
              dica: '000.0',
              icone: Icons.monetization_on,
              teclado: TextInputType.number),
          RaisedButton(
            child: Text('Confirmar'),
            onPressed: () {
              /*debugPrint(_controladorNome.text);
                debugPrint(_controladorValor.text);*/
              final String nomeConta = controladorNome1.text;
              final int valorConta = int.tryParse(controladorValor1.text);

              if (valorConta != null && nomeConta != null) {
                debugPrint('Deu Bom');
                final transferenciaCriada =
                    Valorcar(nomeConta, valorConta);
                debugPrint('$transferenciaCriada');
                debugPrint(controladorValor1.text);
                Navigator.pop(context,transferenciaCriada);
              }
            },
          )
        ],
      ),
    );
  }

}


class CardUS extends StatelessWidget {
  final Valorcar valorcar;
  CardUS (this.valorcar);
  @override
  
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.people),
        title: Text(valorcar.nome),
        subtitle: Text(valorcar.valor.toString()),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}

class ListadeUsuariosState extends State<ListadeUsuarios> {
  final List<Valorcar> wwtransferencias = List();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulários')), 
      body: ListView.builder(
        itemCount: wwtransferencias.length,
        itemBuilder: (context, indice) {
          final transferenciad = wwtransferencias[indice];
          return CardUS(transferenciad);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Valorcar> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Valor();
          }));
          future.then((transferenciaRecebida) {
            debugPrint('chegou');
            debugPrint('$transferenciaRecebida');
            if(transferenciaRecebida != null){
               wwtransferencias.add(transferenciaRecebida);
            }
          });
        },
      ),
    );
  }
}

class Valorcar {
  final String nome;
  final int valor;
  Valorcar(this.nome, this.valor);
}
