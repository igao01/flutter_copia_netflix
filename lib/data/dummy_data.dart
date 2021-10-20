import 'package:copia_netflix/models/category.dart';
import 'package:copia_netflix/models/title.dart';

const dummyCategories = [
  Category(id: 'c1', title: 'Minha lista', isHomeOnly: false),
  Category(id: 'c2', title: 'Continuar assistindo', isHomeOnly: true),
  Category(id: 'c3', title: 'Em alta', isHomeOnly: true),
  Category(id: 'c4', title: 'Top 10 noBrasil hoje', isHomeOnly: true),
  Category(id: 'c5', title: 'Populares na netflix', isHomeOnly: true),
  Category(id: 'c6', title: 'Comédias', isHomeOnly: false),
  Category(id: 'c7', title: 'Dramas', isHomeOnly: false),
  Category(id: 'c8', title: 'Fantasias', isHomeOnly: false),
  Category(id: 'c9', title: 'Romance', isHomeOnly: false),
  Category(id: 'c10', title: 'Terror', isHomeOnly: false),
];

List<Title> dummyTitle = [
  Title(
    id: 't1',
    title: 'Trollhunters',
    synopsis:
        'Depois de descobrir um amuleto misterioso, um adolescente encontra uma civilização secreta de poderosos trolls sob a pequena cidade de Arcadia.',
    indicativeRatingImageUrl:
        'https://img.quizur.com/f/img5ddbf964d88722.81695728.png?lastEdited=1574697344',
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BNzU4MDY5Mjk4OF5BMl5BanBnXkFtZTgwODEzNTE1NTM@._V1_.jpg',
    videoUrl: 'https://www.youtube.com/watch?v=J2oNgZlbSKI',
    trailerUrl: 'https://www.youtube.com/watch?v=J2oNgZlbSKI',
    year: 2018,
    isLikedClassified: false,
    categories: ['c1', 'c2', 'c3', 'c4', 'c8'],
  ),
  Title(
    id: 't1',
    title: 'Trollhunters',
    synopsis:
        'Depois de descobrir um amuleto misterioso, um adolescente encontra uma civilização secreta de poderosos trolls sob a pequena cidade de Arcadia.',
    indicativeRatingImageUrl:
        'https://img.quizur.com/f/img5ddbf964d88722.81695728.png?lastEdited=1574697344',
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BNzU4MDY5Mjk4OF5BMl5BanBnXkFtZTgwODEzNTE1NTM@._V1_.jpg',
    videoUrl: 'https://www.youtube.com/watch?v=J2oNgZlbSKI',
    trailerUrl: 'https://www.youtube.com/watch?v=J2oNgZlbSKI',
    year: 2018,
    isLikedClassified: false,
    categories: ['c1', 'c2', 'c3', 'c4', 'c8'],
  ),
  Title(
    id: 't1',
    title: 'Trollhunters',
    synopsis:
        'Depois de descobrir um amuleto misterioso, um adolescente encontra uma civilização secreta de poderosos trolls sob a pequena cidade de Arcadia.',
    indicativeRatingImageUrl:
        'https://img.quizur.com/f/img5ddbf964d88722.81695728.png?lastEdited=1574697344',
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BNzU4MDY5Mjk4OF5BMl5BanBnXkFtZTgwODEzNTE1NTM@._V1_.jpg',
    videoUrl: 'https://www.youtube.com/watch?v=J2oNgZlbSKI',
    trailerUrl: 'https://www.youtube.com/watch?v=J2oNgZlbSKI',
    year: 2018,
    isLikedClassified: false,
    categories: ['c1', 'c2', 'c3', 'c4', 'c8'],
  ),
  Title(
    id: 't1',
    title: 'Trollhunters',
    synopsis:
        'Depois de descobrir um amuleto misterioso, um adolescente encontra uma civilização secreta de poderosos trolls sob a pequena cidade de Arcadia.',
    indicativeRatingImageUrl:
        'https://img.quizur.com/f/img5ddbf964d88722.81695728.png?lastEdited=1574697344',
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BNzU4MDY5Mjk4OF5BMl5BanBnXkFtZTgwODEzNTE1NTM@._V1_.jpg',
    videoUrl: 'https://www.youtube.com/watch?v=J2oNgZlbSKI',
    trailerUrl: 'https://www.youtube.com/watch?v=J2oNgZlbSKI',
    year: 2018,
    isLikedClassified: false,
    categories: ['c1', 'c2', 'c3', 'c4', 'c8'],
  ),
];
