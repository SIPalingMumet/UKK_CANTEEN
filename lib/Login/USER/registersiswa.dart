import 'package:flutter/material.dart';
import 'package:ukk_kantin_2/USER/homesiswa.dart';
import 'package:ukk_kantin_2/Login/USER/loginsiswa.dart';

class Registersiswa extends StatefulWidget {
  const Registersiswa({super.key});

  @override
  State<Registersiswa> createState() => _RegistersiswaState();
}

class _RegistersiswaState extends State<Registersiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.chevron_left),
                iconSize: 40.0,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Loginsis()),
                  );
                },
              ),
              const Row(children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Hello, Welcome !",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              const Row(children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Please register",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              const SizedBox(height: 20),
              const InputField(label: "Nama"),
              const SizedBox(height: 10),
              const InputField(label: "Alamat"),
              const SizedBox(height: 10),
              const InputField(label: "Telepon"),
              const SizedBox(height: 10),
              const InputField(label: "Username"),
              const SizedBox(height: 10),
              const InputField(label: "Password", isPassword: true),
              const SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Icon(Icons.add_a_photo, color: Colors.black),
                  ),
                  const SizedBox(width: 158),
                  const Expanded(
                    child: Text(
                      "No File Chose",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const Homeage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Sign UP",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String label;
  final bool isPassword;
  final double width;

  const InputField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.width = 350,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                hintText: "Value",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
