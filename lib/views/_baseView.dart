import 'package:flutter/material.dart';

abstract class BaseView extends StatelessWidget {
  const BaseView(this.widgetLeading, this.titulo);

  final Widget widgetLeading;
  final String titulo;
}
