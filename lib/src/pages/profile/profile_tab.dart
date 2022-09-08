import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/common_widgets/custom_text_fiel.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do usuário'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: const [
          // Email
          CustomTextField(
            icon: Icons.email,
            label: 'Email',
          ),

          // Nome

          // Celular

          // CPF

          // Botão para atualizar a senha
        ],
      ),
    );
  }
}
