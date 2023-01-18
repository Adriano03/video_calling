import 'package:flutter/material.dart';

import '../components/call.dart';

class VideoCallingPage extends StatelessWidget {
  VideoCallingPage({super.key});

  final callId = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chamada de Vídeo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: callId,
                  decoration: const InputDecoration(
                    labelText: 'Entrar na chamada com ID',
                  ),
                  validator: (_callId) {
                    final callId = _callId ?? '';
                    if (callId.isEmpty) {
                      return 'Digite o ID da sala';
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  final isValid = _formKey.currentState?.validate() ?? false;
                  if (!isValid) {
                    return;
                  }
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Call(callId: callId.text);
                    },
                  ));
                },
                child: const Text('Entrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
