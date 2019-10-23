import 'package:flutter/material.dart';
import 'package:flutter_maps/helpers/navegacaoHelper.dart';

class PrincipalView extends StatefulWidget {
  @override
  _PrincipalViewState createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  // @override
  // void initState() {
  //   PermissionHandler().requestPermissions([PermissionGroup.location]);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Mapa Simples"),
            onPressed: () => Navigator.of(context).pushNamed(NavegacaoHelper.rotaPrincipal),
          )
        ],
      ),
    );
  }
}
