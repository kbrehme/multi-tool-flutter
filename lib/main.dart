// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:multi_tool/Crypto.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Scaffold(
            body: Accordion(header: const Text('Crypto'), children: [
          AccordionSection(
              header: const Text('Crypto'),
              content: Accordion(
                children: [
                  AccordionSection(
                      header: const Text('Token generator'),
                      content: const Text(
                          'Generate random string with the chars you want, uppercase or lowercase letters, numbers and/or symbols.')),
                  AccordionSection(
                      header: const Text('Hash text'),
                      content: const Text(
                          'Hash a text string using the function you need : MD5, SHA1, SHA256, SHA224, SHA512, SHA384, SHA3 or RIPEMD160')),
                  AccordionSection(
                      header: const Text('Bcrypt'),
                      content: const Text(
                          'Hash and compare text string using bcrypt. Bcrypt is a password-hashing function based on the Blowfish cipher.')),
                  AccordionSection(
                      header: const Text('UUIDs v4 generator'),
                      content: const Text(
                          'A Universally Unique Identifier (UUID) is a 128-bit number used to identify information in computer systems. The number of possible UUIDs is 16^32, which is 2^128 or about 3.4x10^38 (which is a lot!).')),
                  AccordionSection(
                      header: const Text('ULID generator'),
                      content: const Text(
                          'Generate random Universally Unique Lexicographically Sortable Identifier (ULID).')),
                  AccordionSection(
                      header: const Text('Encrypt / decrypt text'),
                      content: const Text(
                          'Encrypt and decrypt text clear text using crypto algorithm like AES, TripleDES, Rabbit or RC4.')),
                ],
              ))
        ])),
      ),
    );
  }
}
