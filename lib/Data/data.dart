import 'package:flutter/material.dart';

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color(0xffFF0E39),
    Color(0xffFB23FF),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
).createShader(Rect.fromLTWH(0.0, 0.0, 250.0, 55.0));

class MovieData {
  final String title;
  final String age;
  final AssetImage img;
  final double? watchtime;
  final int year;
  final double score;
  final List<String> categorias;
  final String movieprot;

  MovieData({
    required this.title,
    required this.age,
    required this.img,
    this.watchtime,
    required this.year,
    required this.score,
    required this.categorias,
    required this.movieprot,
  });
}

final List<String> categories = [
  'Heartfelt',
  'Action',
  'New',
  'Trending',
  'Comedy',
  'Sci-Fi',
  'Animation',
];

final List movieswathcing = [
  MovieData(
    title: 'Stranger Things 2',
    age: '14',
    img: AssetImage('assets/img/strangerthings.jpg'),
    watchtime: 0.65,
    year: 2016,
    score: 8.7,
    categorias: [
      'Drama',
      'Fantasy',
      'Horror',
      'Mystery',
      'Sci-fi',
      'Thriller',
    ],
    movieprot:
        "In a small town where everyone knows everyone, a peculiar incident starts a chain of events that leads to the disappearance of a child, which begins to tear at the fabric of an otherwise peaceful community. Dark government agencies and seemingly malevolent supernatural forces converge on the town, while a few of the locals begin to understand that there's more going on than meets the eye.—Charles J.",
  ),
  MovieData(
    title: 'The Shawshank Redemption',
    age: '16',
    img: AssetImage('assets/img/redemption.jpg'),
    watchtime: 0.42,
    year: 1994,
    score: 9.3,
    categorias: [
      'Drama',
    ],
    movieprot:
        "Chronicles the experiences of a formerly successful banker as a prisoner in the gloomy jailhouse of Shawshank after being found guilty of a crime he did not commit. The film portrays the man's unique way of dealing with his new, torturous life; along the way he befriends a number of fellow prisoners, most notably a wise long-term inmate named Red.",
  ),
];

final List movies = [
  MovieData(
    title: 'Her',
    age: '14',
    img: AssetImage('assets/img/her.jpg'),
    year: 2013,
    score: 8.0,
    categorias: [
      'Drama',
      'Romance',
      'Sci-Fi',
    ],
    movieprot:
        "Theodore is a lonely man in the final stages of his divorce. When he's not working as a letter writer, his down time is spent playing video games and occasionally hanging out with friends. He decides to purchase the new OS1, which is advertised as the world's first artificially intelligent operating system, "
        "It's not just an operating system, it's a consciousness,"
        " the ad states. Theodore quickly finds himself drawn in with Samantha, the voice behind his OS1. As they start spending time together they grow closer and closer and eventually find themselves in love. Having fallen in love with his OS, Theodore finds himself dealing with feelings of both great joy and doubt. As an OS, Samantha has powerful intelligence that she uses to help Theodore in ways others hadn't, but how does she help him deal with his inner conflict of being in love with an OS?—Bob Philpot",
  ),
  MovieData(
    title: 'Akira',
    age: '14',
    img: AssetImage('assets/img/akira.png'),
    year: 1988,
    score: 8.0,
    categorias: [
      'Animation',
      'Action',
      'Drama',
    ],
    movieprot:
        "2019. 31 years after being destroyed during World War 3, Tokyo (now 'Neo-Tokyo') has been rebuilt and is a thriving metropolis. Shotaro Kaneda is the leader of a biker gang. His friend Tetsuo is injured in an accident and taken to a top-secret government facility. He develops telekinetic powers but decides to use them for evil rather than good. He has the same powers as Akira, the force that destroyed Tokyo in 1988, and now it appears that history will repeat itself.",
  ),
  MovieData(
    title: 'Prometheus',
    age: '16',
    img: AssetImage('assets/img/prometheus.jpg'),
    year: 2012,
    score: 7.0,
    categorias: [
      'Adventure',
      'Mystery',
      'Sci-Fi',
    ],
    movieprot:
        "Following a faint trail of clues, the accomplished archaeologist, Doctor Elizabeth Shaw, and her partner, Charlie Holloway, along with a seventeen-man crew, embark on an ambitious, deep-space scientific expedition. Aboard the revolutionary space-exploration starship, USCSS Prometheus, the team sets foot on the rocky terrain of the desolate exomoon, LV-223, in 2093, to investigate the existence of the superior extraterrestrial species known as the '"
        "Engineers"
        "'. But, there, inside a mysterious, complex structure of cavernous dark chambers and an intricate underground system of tunnels, more enigmas await. Now, a terrifying discovery threatens not only the outcome of the bold outer-space mission but also the very future of humankind. Is the world prepared for the answers to the fundamental questions of human existence?",
  ),
  MovieData(
    title: 'Spirited Away',
    age: 'L',
    img: AssetImage('assets/img/away.png'),
    year: 2001,
    score: 8.6,
    categorias: [
      'Animation',
      'Adventure',
      'Family',
    ],
    movieprot:
        "Chihiro and her parents are moving to a small Japanese town in the countryside, much to Chihiro's dismay. On the way to their new home, Chihiro's father makes a wrong turn and drives down a lonely one-lane road which dead-ends in front of a tunnel. Her parents decide to stop the car and explore the area. They go through the tunnel and find an abandoned amusement park on the other side, with its own little town. When her parents see a restaurant with great-smelling food but no staff, they decide to eat and pay later. However, Chihiro refuses to eat and decides to explore the theme park a bit more. She meets a boy named Haku who tells her that Chihiro and her parents are in danger, and they must leave immediately. She runs to the restaurant and finds that her parents have turned into pigs. In addition, the theme park turns out to be a town inhabited by demons, spirits, and evil gods. At the center of the town is a bathhouse where these creatures go to relax. The owner of the bathhouse is the evil witch Yubaba, who is intent on keeping all trespassers as captive workers, including Chihiro. Chihiro must rely on Haku to save her parents in hopes of returning to their world.",
  ),
];
