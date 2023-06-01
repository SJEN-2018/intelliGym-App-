import 'package:flutter/material.dart';

class gymInfo {
  final String id;
  final String name;
  final String Image;
  final String Contact;
  final String status;
  final double rating;
  final List<String> Hours;

  gymInfo(
      {required this.id,
      required this.name,
      required this.Image,
      required this.Contact,
      required this.status,
      required this.rating,
      required this.Hours});
}
