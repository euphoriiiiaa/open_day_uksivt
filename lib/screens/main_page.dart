import 'package:flutter/material.dart';
import 'package:open_day_uksivt/classes/book.dart';
import 'package:open_day_uksivt/widgets/book_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

Book firstBook = Book(
  urlImage: 'assets/fathers.jpg',
  name: "Отцы и дети",
  author: "Иван Тургенев",
  desc:
      "Знаменитый роман Тургенева, ставший чуть ли не самым значительным произведением в истории о взаимоотношениях поколений. Споры главного героя Евгения Базарова, называающего себя нигилистом и отрицающего расхожие представления о жизни, искусстве, морали, природе человека, и его антагониста Павла Кирсанова, аристократа до мозга костей, состаляют главную проблематику романа.",
  year: 1860,
  genre: "Роман",
  cost: 299.90
);

Book secondBook = Book(
  urlImage: 'assets/idiot.jpg',
  name: "Идиот",
  author: "Федор Достоевский",
  desc:
      "Завораживающая история трагических страстей, связавших купца Парфена Рогожина, бывшую содержанку богатого дворянина Настасью Филипповну и «идеального человека» князя Мышкина — беспомощного идиота в мире корысти и зла, гласящая о том, что сострадание, возможно, единственный закон человеческого бытия.",
  year: 1867,
  genre: "Роман",
  cost: 349.99
);

Book thirdBook = Book(
  urlImage: 'assets/prest.jpg',
  name: 'Преступление и наказание',
  author: "Федор Достоевский",
  desc:
      "Одно из самых значительных произведений в истории мировой литературы. Это и глубокий филососфский роман, и тонкая психологическая драма, и захватывающий детектив, и величественная картина мрачного города, в недрах которого герои грешат и ищут прощения, жертвуют собой и отрекаются от себя ради ближних и находят успокоение в смирении, покаянии, вере.",
  year: 1865,
  genre: "Роман",
  cost: 550.50
);

Book fourthBook = Book(
  urlImage: 'assets/us.jpg',
  name: "Мы",
  author: "Евгений Замятин",
  desc:
      'Знаковый роман, с которого официально отсчитывают само существование жанра "антиутопия" Запрещенный в советский период, теперь он считается одним из классических произведений не только русской, но и мировой литературы ХХ века.',
  year: 1920,
  genre: "Роман-антиутопия",
  cost: 620.99
);

Book fifthBook = Book(
  urlImage: 'assets/white_nights.jpg',
  name: "Белые ночи",
  author: "Федор Достоевский",
  desc:
      "Одно из лучших произведений школы «сентиментального натурализма», по мнению критика Аполлона Григорьева. Это лирическая исповедь героя-мечтателя, одинокого и робкого человека, в жизни которого на какое-то время появляется девушка, а вместе с ней и надежда на более светлое будущее.",
  year: 1848,
  genre: "Повесть",
  cost: 220.49
);

List<Book> list = [firstBook, secondBook, thirdBook, fourthBook, fifthBook];

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: Colors.black38,
          expandedHeight: 50,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            titlePadding: EdgeInsets.symmetric(vertical: 10),
            title: Text(
              "КНИГИ",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return BookItem(
                id: index,
                urlImage: list[index].urlImage,
                name: list[index].name,
                author: list[index].author,
                desc: list[index].desc,
                year: list[index].year,
                genre: list[index].genre,
              );
            },
            childCount: list.length,
          ),
        )
      ],
    ));
  }
}
