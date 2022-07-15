import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tele_taxi/src/controllers/services.dart';

import '../controllers/c_request_service.dart';

void main() => runApp(const FormService());

class FormService extends StatefulWidget {
  const FormService();
  @override
  FormServiceState createState() {
    return FormServiceState();
  }
}

class FormServiceState extends State<FormService> {
    final _formKey = GlobalKey<FormState>();
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    @override
    Widget build(BuildContext context) {
      const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black87);
      return Form(
          key: _formKey,
          child: Padding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Solicitar Servicio',
                  style: optionStyle,
                ),
                Padding(
                    child: TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Télefono',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Ingrese su télefono';
                        }
                        return null;
                      },
                    ),
                    padding: const EdgeInsets.only(top: 16),
                ),
                Padding(
                  child: TextFormField(
                    controller: addressController,
                    keyboardType: TextInputType.streetAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Dirección',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Ingrese la dirección';
                      }
                      return null;
                    },
                  ),
                  padding: const EdgeInsets.only(top: 16),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: MaterialButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Scaffold.of(context).showSnackBar(const SnackBar(content: Text('Solicitando servicios')));
                        //Services().createRequestService(CRequestService(phone: phoneController.text, address: addressController.text, uidNotification: ''));
                      }
                    },
                    child: const Text('Solicitar'),
                    color:  Colors.yellow.shade800,
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 16.0),
          )
      );
    }
  }
