import 'package:flutter/material.dart';
import 'package:open_day_uksivt/classes/book.dart';
import 'package:open_day_uksivt/screens/main_page.dart';
import 'package:open_day_uksivt/screens/modal_paymet.dart';

class BookPage extends StatefulWidget {
  const BookPage({
    super.key,
  });

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  Book? bookFromAnother;
  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args != null) {
      for (int i = 0; i < list.length; i++) {
        if (i == args) {
          bookFromAnother = list[i];
          break;
        }
      }
    }
    super.didChangeDependencies();
  }

  void showModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const ModalPayment();
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                bookFromAnother!.urlImage,
                width: 150,
                height: 200,
              ),
              SizedBox(
                width: 220,
                child: Text(
                  bookFromAnother!.name,
                  softWrap: true,
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              bookFromAnother!.desc,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                            color: Colors.black,
                            offset: Offset(1,1),
                            blurRadius: 10)
                      ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Стоимость: ${bookFromAnother!.cost.toString()} руб.",
                style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      shadows: <Shadow>[
                        Shadow(
                            color: Colors.black,
                            offset: Offset.zero,
                            blurRadius: 10)
                      ]),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  showModal(context);
                },
                icon: const Icon(Icons.shopify_rounded, color: Colors.black,),
                label: const Text("КУПИТЬ", style: TextStyle(color: Colors.black),),
              )
            ],
          )
        ],
      ),
    );
  }
}
