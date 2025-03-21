import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quarn_app/models/books_hadiths.dart';

import '../../screens/hadiths_screen.dart';

class PersonHadithsContainer extends StatelessWidget {
  final BooksHadiths hadiths;
  final int index;

  const PersonHadithsContainer({
    super.key,
    required this.hadiths,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, left: 8, right: 8, top: 8),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => HadithsScreen(
            title: hadiths.name, id: hadiths.id,)));
        },
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 6,
                blurRadius: 6,
                offset: const Offset(0, 3),
              )
            ],
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: const Color(0xFFA85000),
                  child: Text(
                    '${index + 1}',
                    style: GoogleFonts.elMessiri(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      hadiths.name,
                      style: GoogleFonts.elMessiri(
                        color: const Color(0xFFA85000),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                      Text(
                        hadiths.id,
                        style: GoogleFonts.elMessiri(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
                const SizedBox(width: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      'عدد الأحاديث',
                      style: GoogleFonts.elMessiri(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${hadiths.numberOfHadiths}',
                      style:  GoogleFonts.elMessiri(
                        fontSize: 20,
                        color: const Color(0xFFA85000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
