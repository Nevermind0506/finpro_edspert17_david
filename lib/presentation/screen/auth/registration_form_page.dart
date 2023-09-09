import 'package:finpro_edspert17_david/presentation/screen/auth/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class RegistrationFormScreen extends StatelessWidget {
  const RegistrationFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yuk isi data diri'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputFieldWidget(
              titleText: 'Email',
              hintText: 'Email...',
              controller: TextEditingController(),
            ),
            InputFieldWidget(
              titleText: 'Nama Lengkap',
              hintText: 'contoh: Lionel Messi',
              controller: TextEditingController(),
            ),
            InputFieldWidget(
              titleText: 'Nama Sekolah',
              hintText: 'Sekolah...',
              controller: TextEditingController(),
            ),
          ],
        ),
      ),
    );
  }
}
