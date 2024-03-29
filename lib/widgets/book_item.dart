import 'package:flutter/material.dart';

class BookItem extends StatefulWidget {
  final int id;
  final String urlImage;
  final String name;
  final String author;
  final String desc;
  final int year;
  final String genre;
  const BookItem(
      {super.key,
      required this.id,
      required this.urlImage,
      required this.name,
      required this.author,
      required this.desc,
      required this.year,
      required this.genre});

  @override
  State<BookItem> createState() => _BookItemState();
}

class _BookItemState extends State<BookItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                widget.urlImage,
                height: 400,
                width: 400,
              ),
            ),
            Column(
              children: [
                Text(widget.id.toString(), style: const TextStyle(color: Colors.transparent),),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                  child: Text(
                    widget.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        shadows: <Shadow>[
                          Shadow(
                              color: Colors.black,
                              offset: Offset(1, 1),
                              blurRadius: 10)
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0, top: 10),
                  child: Text(
                    "Автор: ${widget.author}",
                    style: const TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Жанр: ${widget.genre}",
                        style: const TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Год: ${widget.year}",
                        style: const TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/book_page', arguments: widget.id);
                        },
                        iconSize: 30,
                        icon: const Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                        splashColor: Colors.red,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
