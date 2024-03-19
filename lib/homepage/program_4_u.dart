import 'package:banao_flutter/models/program_list.dart';
import 'package:flutter/material.dart';

class Programs {
  static List<ProgramItems> prgm = ProgramItems.getPrograms();

  static Container programItems() {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Programs for you',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  )),
              Row(
                children: [
                  Text(
                    'View all',
                    style: TextStyle(
                        color: Color(0xFF6D747A),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: Color(0xFF6D747A),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(5),
              child: Row(
                children: prgm.map((p) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 5, // Spread radius
                            blurRadius: 7, // Blur radius
                            offset:
                                const Offset(0, 3), // Offset from the bottom
                          ),
                        ]),
                    width: 242,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          height: 140,
                          child: Center(
                            child: Image.asset(p.image),
                          ),
                        ),
                        Text(
                          p.title,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Color(0xFF598BED),
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          p.description,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 22),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${p.lesson.toString()} lessions',
                          style: const TextStyle(
                            color: Color(0xFF6D747A),
                          ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ))
        ],
      ),
    );
  }
}
