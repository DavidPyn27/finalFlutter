import 'package:flutter/material.dart';

void main() => runApp(FormService());

class FormService extends StatefulWidget {
  @override
  FormServiceState createState() {
    return FormServiceState();
  }
}

class FormServiceState extends State<FormService> {
    // Crea una clave global que identificará de manera única el widget Form
    // y nos permita validar el formulario
    //
    // Nota: Esto es un `GlobalKey<FormState>`, no un GlobalKey<MyCustomFormState>!
    final _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
      // Cree un widget Form usando el _formKey que creamos anteriormente
      return Form(
          key: _formKey,
          child: // Construiremos esto en los siguientes pasos!
      );
    }
  }
