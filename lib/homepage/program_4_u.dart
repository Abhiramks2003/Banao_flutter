import 'package:flutter/material.dart';

class Programs {
  static Container programItems() {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(top: 20),
      child: const Column(
        children: [
          Row(
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
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
