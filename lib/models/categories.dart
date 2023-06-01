import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class coaches {
  final String id;
  final String name;
  final String Image;
  final String Contact;
  final String status;
  final double rating;
  final List<String> Hours;
  final String facebookUrl;
  final String twitterUrl;
  final String linkedinUrl;
  final String email;

  coaches(
      {required this.email,
      required this.id,
      required this.facebookUrl,
      required this.twitterUrl,
      required this.linkedinUrl,
      required this.name,
      required this.Image,
      required this.Contact,
      required this.status,
      required this.rating,
      required this.Hours});
}

class nutrations {
  final String id;
  final String name;
  final String Image;
  final String Contact;
  final String status;
  final double rating;
  final List<String> Hours;
  final String facebookUrl;
  final String twitterUrl;
  final String linkedinUrl;
  final String email;

  nutrations(
      {required this.email,
      required this.id,
      required this.facebookUrl,
      required this.twitterUrl,
      required this.linkedinUrl,
      required this.name,
      required this.Image,
      required this.Contact,
      required this.status,
      required this.rating,
      required this.Hours});
}
