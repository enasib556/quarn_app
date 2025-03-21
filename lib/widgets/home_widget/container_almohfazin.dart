import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerAlmohfazin extends StatelessWidget {
  const ContainerAlmohfazin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 181, // تأكيد على الطول الكامل
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // يمنع القص من الأسفل
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 165,
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
              color: Color(0xFFA85000),
            ),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  'assets/images/Frame 1067.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5), // مسافة إضافية لمنع القص

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'محمد علي',
              style: GoogleFonts.elMessiri(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF5C649D),
              ),
            ),
          ),
          const SizedBox(height: 4),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'مُحفظ',
              style: GoogleFonts.elMessiri(
                fontSize: 12,
                color: Color(0xFF8A8A8A), // لون خطأ كان فيه مشكلة
              ),
            ),
          ),
          const SizedBox(height: 4),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'المراجعات',
                  style: GoogleFonts.elMessiri(
                    fontSize: 14,
                    color: Color(0xFF9467DD),
                  ),
                ),
                const SizedBox(width: 55),
                Image.asset('assets/icons/fluent-emoji-flat_star.png'),
                const SizedBox(width: 3),
                Text(
                  '4.6',
                  style: GoogleFonts.elMessiri(
                    fontSize: 14,
                    color: Color(0xFF6F6F6F), // تصحيح كود اللون
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8), // أضفت مسافة إضافية لمنع القص
        ],
      ),
    );
  }
}
