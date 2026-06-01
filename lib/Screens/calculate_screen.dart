import 'package:flutter/material.dart';

class CalculateScreen extends StatelessWidget {
  const CalculateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.deepPurple,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios, color: Colors.white, size: 30),
                      Text(
                        'Ders Ekle',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Bilgileri girerek finalden kaç alman gerektiğini hesapla',
                    style: TextStyle(color: Colors.grey.shade300, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Transform.translate(
              offset: Offset(0, -20),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CalculateColumn(
                          fieldName: 'DERS ADI',
                          title: 'Ders Adı',
                          description: 'ders gir...',
                        ),
                        SizedBox(height: 8),
                        CalculateColumn(
                          fieldName: 'VİZE NOTU',
                          title: 'Vize Notu',
                          description: 'not gir...',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'VİZE AĞIRLIĞI',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              PercentContainer(percent: '%20'),
                              PercentContainer(percent: '%30'),
                              PercentContainer(percent: '%40'),
                              PercentContainer(percent: '%50'),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        CalculateColumn(
                          fieldName: 'PROJE NOTU',
                          title: 'Proje Notu',
                          description: 'not gir...',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'PROJE AĞIRLIĞI',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              PercentContainer(percent: '%20'),
                              PercentContainer(percent: '%30'),
                              PercentContainer(percent: '%40'),
                              PercentContainer(percent: '%50'),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        CalculateColumn(
                          fieldName: 'QUİZ NOTU',
                          title: 'Proje Notu',
                          description: 'not gir...',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'QUİZ AĞIRLIĞI',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              PercentContainer(percent: '%20'),
                              PercentContainer(percent: '%30'),
                              PercentContainer(percent: '%40'),
                              PercentContainer(percent: '%50'),
                            ],
                          ),
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PercentContainer extends StatelessWidget {
  final String percent;
  const PercentContainer({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepPurple.shade100,
          ),
          child: Center(
            child: Text(
              percent,
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CalculateColumn extends StatelessWidget {
  final String fieldName;
  final String title;
  final String description;
  const CalculateColumn({
    super.key,
    required this.fieldName,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldName,
          style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: description,
            labelText: title,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.deepPurple),
            ),
            filled: true,
            fillColor: Colors.deepPurple.shade100,
          ),
        ),
      ],
    );
  }
}
