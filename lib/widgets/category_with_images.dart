import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWithImage extends StatelessWidget {
  final String label;
  final String imagePath;
  
  const CategoryWithImage({
    Key? key,
    required this.label,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey[300]!, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: GoogleFonts.raleway(
              fontSize: 12, 
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}