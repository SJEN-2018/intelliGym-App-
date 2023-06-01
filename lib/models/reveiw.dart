import 'package:flutter/material.dart';

class Review {
  final String username;
  final String userImage;
  final String reviewText;
  final int starRating;

  Review(
      {required this.username,
      required this.userImage,
      required this.reviewText,
      required this.starRating});
}
