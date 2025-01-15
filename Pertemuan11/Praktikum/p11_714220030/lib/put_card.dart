import 'package:flutter/material.dart';
import 'user.dart';

class PutCard extends StatelessWidget {
  final UserUpdate? crdUpdate;
  const PutCard({super.key, required this.crdUpdate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.lightBlue[200],
      ),
      child: crdUpdate == null
          ? const Center(child: Text('No data available'))
          : Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 70,
                      child: Text(
                        'Name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 220,
                      child: Text(': ${crdUpdate!.name ?? "Unknown"}'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 70,
                      child: Text(
                        'Job',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 220,
                      child: Text(': ${crdUpdate!.job ?? "Unknown"}'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 70,
                      child: Text(
                        'Update At',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 220,
                      child: Text(': ${crdUpdate!.updatedAt ?? "Not Available"}'),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
