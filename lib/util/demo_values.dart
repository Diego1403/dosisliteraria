
import 'package:dosis_literaria/home/models/author/author.dart';
import 'package:dosis_literaria/home/models/book/book.dart';

class DemoValues {

  static final List books = <Book>[
    Book()
      ..id = "A12h1234567"
      ..cover =
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Dawn_Charles_V_Palace_Alhambra_Granada_Andalusia_Spain.jpg/1200px-Dawn_Charles_V_Palace_Alhambra_Granada_Andalusia_Spain.jpg"
      ..title = "Cuentos de la Alhambra"
      ..author = <Author>[
        Author()
          ..name = "Washington Irving"
          ..country = "Estados unidos"
          ..relatedAuthors = <Author>[
            Author()
              ..name = "Mordecai Manuel Noah"
              ..country = "Estados unidos"
          ],
      ] //fin de autores relacionados
      ..year = "1832"
      ..genres = <BookGenre>[
        BookGenre()
          ..id = "Aventura2"
          ..name = "Aventura",
        BookGenre()
          ..id = "tipo3"
          ..id = "Relato"
      ]
      ..tags = <BookTag>[
        BookTag()
          ..id = "lugardeinteres"
          ..name = "Granada"
      ], //fin libro 1

    Book()
      ..id = "B112333445"
      ..title = "Meditaciones"
      ..cover ="https://cdn.pixabay.com/photo/2017/09/06/14/36/marcus-aurelius-2721712_960_720.jpg"
  ..author = <Author>[
  Author()
  ..name = "Marco Aurelio"
  ..country = "Estados unidos"
  ..relatedAuthors = <Author>[
  Author()
  ..name = "Mordecai Manuel Noah"
  ..country = "Estados unidos"
  ],
  ],
  Book()
      ..id = "D12h1234567"
      ..title = "20 Poemas de amor"
      ..cover ="https://images.unsplash.com/photo-1526392060635-9d6019884377?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
      ..author = <Author>[
          Author()
      ..name = "Pablo Neruda"
     ..country = "España"
      ..relatedAuthors = <Author>[
      Author()
      ..name = "Mordecai Manuel Noah"
      ..country = "Estados unidos"
  ],
      ]
  ];
}
