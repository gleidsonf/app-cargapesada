import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderCard extends StatelessWidget {
  final String origin;
  final String destination;
  final String size;
  final String weight;

  const OrderCard({
    Key? key,
    required this.origin,
    required this.destination,
    required this.size,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(18),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200] ?? const Color(0xFFD9D9D9), width: 1),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Color(0xFFD9D9D9), offset: Offset(4, 4), blurRadius: 4),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'SAINDO DE',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(166, 166, 166, 1),
            ),
          ),
          Text(
            origin,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'INDO PARA',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(166, 166, 166, 1),
            ),
          ),
          Text(
            destination,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              SvgPicture.asset(
                'assets/svg/box.svg',
                width: 56,
                height: 61,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  '$size $weight',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
