import 'package:flutter/material.dart';
import 'package:intelligym_app/models/class.dart';
import './models/gym.dart';
import './models/categories.dart';
import './models/reveiw.dart';
import './models/packeges.dart';

final GYMINFO = [
  gymInfo(
      id: '1',
      name: 'GOLD`S GYM',
      Image:
          'https://goldsgymeastnorthport.com/wp-content/uploads/sites/119/2022/12/golds-gym-east-northport-logo-big.png',
      Contact: 'contact me',
      status: 'open now',
      rating: 4.2,
      Hours: [
        'Monday - Thursday: 5AM - 23PM',
        'Friday: 5AM - 22PM',
        'Saturday: 7AM - 22PM',
        'Sunday: 7AM - 19PM',
      ]),
  gymInfo(
      id: '2',
      name: 'Fitness GYM',
      Image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKV8YkxinxV1_7p6N3ARa3hM9Nz15Ussy-pw&usqp=CAU',
      Contact: 'contact me',
      status: 'open now',
      rating: 4.2,
      Hours: [
        'Monday - Thursday: 5AM - 23PM',
        'Friday: 5AM - 22PM',
        'Saturday: 7AM - 22PM',
        'Sunday: 7AM - 19PM',
      ]),
];

final COACHESINFO = [
  coaches(
      id: '1',
      facebookUrl: 'https://www.facebook.com/',
      twitterUrl: 'https://twitter.com/?lang=ar',
      linkedinUrl: 'https://www.linkedin.com/',
      name: 'coache1',
      Image: 'https://cdn-icons-png.flaticon.com/512/939/939255.png',
      Contact: 'Contact',
      status: 'busy now',
      rating: 2.4,
      Hours: [
        'Monday - Thursday: 5AM - 23PM',
        'Friday: 5AM - 22PM',
        'Saturday: 7AM - 22PM',
        'Sunday: 7AM - 19PM',
      ],
      email: 'coache@gmail.com'),
  coaches(
      id: '2',
      facebookUrl: 'https://www.facebook.com/',
      twitterUrl: 'https://twitter.com/?lang=ar',
      linkedinUrl: 'https://www.linkedin.com/',
      name: 'coache2',
      Image: 'https://cdn-icons-png.flaticon.com/512/939/939255.png',
      Contact: 'Contact',
      status: 'busy now',
      rating: 2.4,
      Hours: [
        'Monday - Thursday: 5AM - 23PM',
        'Friday: 5AM - 22PM',
        'Saturday: 7AM - 22PM',
        'Sunday: 7AM - 19PM',
      ],
      email: 'coache@gmail.com'),
  coaches(
      id: '3',
      facebookUrl: 'https://www.facebook.com/',
      twitterUrl: 'https://twitter.com/?lang=ar',
      linkedinUrl: 'https://www.linkedin.com/',
      name: 'coache3',
      Image: 'https://cdn-icons-png.flaticon.com/512/939/939255.png',
      Contact: 'Contact',
      status: 'availible',
      rating: 2.4,
      Hours: [
        'Monday - Thursday: 5AM - 23PM',
        'Friday: 5AM - 22PM',
        'Saturday: 7AM - 22PM',
        'Sunday: 7AM - 19PM',
      ],
      email: 'coache@gmail.com'),
];

final NUTRATIONINFO = [
  nutrations(
      id: '1',
      facebookUrl: 'https://www.facebook.com/',
      twitterUrl: 'https://twitter.com/?lang=ar',
      linkedinUrl: 'https://www.linkedin.com/',
      name: 'nutration1',
      Image:
          'https://myhealth.net.au/wp-content/uploads/bb-plugin/cache/Myhealth-Female-Avatar-1-square.png',
      Contact: 'Contact',
      status: 'busy now',
      rating: 3.2,
      Hours: [
        'Monday - Thursday: 5AM - 23PM',
        'Friday: 5AM - 22PM',
        'Saturday: 7AM - 22PM',
        'Sunday: 7AM - 19PM',
      ],
      email: 'nutration@gmail.com'),
  nutrations(
      id: '2',
      facebookUrl: 'https://www.facebook.com/',
      twitterUrl: 'https://twitter.com/?lang=ar',
      linkedinUrl: 'https://www.linkedin.com/',
      name: 'nutration2',
      Image:
          'https://myhealth.net.au/wp-content/uploads/bb-plugin/cache/Myhealth-Female-Avatar-1-square.png',
      Contact: 'Contact',
      status: 'busy now',
      rating: 3.8,
      Hours: [
        'Monday - Thursday: 5AM - 23PM',
        'Friday: 5AM - 22PM',
        'Saturday: 7AM - 22PM',
        'Sunday: 7AM - 19PM',
      ],
      email: 'nutration@gmail.com'),
];

final CLASSES = [
  Classes(
      id: '1',
      name: 'class1',
      Image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxOcodsass9lioc20Ro3a745qL574AIEDxHQ5nEHP8toYY9Rt0XRD_qW2mk2gy1sS3TQU&usqp=CAU',
      time: '10:00AM',
      day: 'Thursday June 22'),
  Classes(
      id: '2',
      name: 'class2',
      Image:
          'https://i.pinimg.com/564x/37/a1/28/37a12807ee32d14b545c4341fd16f750.jpg',
      time: '3.00PM',
      day: 'Sunday June 29'),
];

final reviews = [
  Review(
    username: 'John Smith',
    userImage: 'https://picsum.photos/200',
    reviewText:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed varius orci sed libero dictum, vel dapibus nulla sollicitudin.',
    starRating: 5,
  ),
  Review(
    username: 'Jane Doe',
    userImage: 'https://picsum.photos/200',
    reviewText:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed varius orci sed libero dictum, vel dapibus nulla sollicitudin.',
    starRating: 4,
  ),
];

final packInfo = [
  packegesInfo(id: '1', name: 'package 1', coins: 80, expiry: 45),
  packegesInfo(id: '2', name: 'package 2', coins: 150, expiry: 80),
  packegesInfo(id: '3', name: 'package 3', coins: 300, expiry: 150),
  packegesInfo(id: '4', name: 'package 4', coins: 500, expiry: 250),
];
