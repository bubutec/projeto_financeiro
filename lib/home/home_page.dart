import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value = 46;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      //body
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.blue.shade900,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //lado esquerdo
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Bem Vindo Fulano",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Outobro de 2022",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(children: [
                    //Botoes
                    Column(children: [
                      IconButton(
                          onPressed: () {},
                          iconSize: 24,
                          color: Colors.white,
                          icon: const Icon(Icons.notifications)),
                      IconButton(
                          onPressed: () {},
                          iconSize: 24,
                          color: Colors.white,
                          icon: const Icon(Icons.settings)),
                    ]),

                    //lado esquerdo
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 25.0,
                        child: ClipOval(
                          child: Image.network(
                            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/d7bb2733-7dfe-4330-8419-84b38b2319fd/d5sey10-a2f1faa7-7922-4e95-9acf-7b6ccc8ce2e8.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2Q3YmIyNzMzLTdkZmUtNDMzMC04NDE5LTg0YjM4YjIzMTlmZFwvZDVzZXkxMC1hMmYxZmFhNy03OTIyLTRlOTUtOWFjZi03YjZjY2M4Y2UyZTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.mXiPJsnOJ5HvEXgpC3j3Z1mwdq8zzXKYNt1kXer-TaM',
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Saldo",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "R\$ 1280,00",
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  //area do progresso.
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text("Total"),
                  ),

                  //barra de prograsso.
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      color: Colors.grey.shade400,
                      height: 15,
                      child: Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                            flex: value,
                            child: Container(
                              color: Colors.blue.shade900,
                              height: 15,
                            ),
                          ),
                          Flexible(
                            flex: 100 - value,
                            child: Container(),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: const [
                        Text(
                          "R\$ 1.005,57",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " de R\$ 2.4569",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Planejamento de 30 de outubro",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //linha horizontal
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                    margin: const EdgeInsets.all(5),
                    child: null,
                  ),

                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const ShapeDecoration(
                            color: Colors.pink,
                            shape: CircleBorder(
                              side: BorderSide(width: 0, color: Colors.pink),
                            ),
                          ),
                          width: 45,
                          height: 45,
                          child: const Center(
                            child: Text(
                              "2",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),

                        //const Icon(Icons.color_lens_rounded, size: 45,),
                        const Text("Contas Vencendo Amanhã"),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 45,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //menu
            Wrap(
                alignment: WrapAlignment.start,
                spacing: 10,
                runSpacing: 10,
                children: [
                  //botão primeiro
                  InkWell(
                    onTap: () {}, // Handle your callback.
                    splashColor: Colors.brown.withOpacity(0.5),
                    child: Column(
                      children: [
                        Ink(
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/wallet.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Cateiras',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //botão segundo
                  InkWell(
                    onTap: () {}, // Handle your callback.
                    splashColor: Colors.brown.withOpacity(0.5),
                    child: Column(
                      children: [
                        Ink(
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/moviment.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Movimentos',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //botão terceiro
                  InkWell(
                    onTap: () {}, // Handle your callback.
                    splashColor: Colors.brown.withOpacity(0.5),
                    child: Column(
                      children: [
                        Ink(
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/invest.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Investimentos',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //botão quarto
                  InkWell(
                    onTap: () {}, // Handle your callback.
                    splashColor: Colors.brown.withOpacity(0.5),
                    child: Column(
                      children: [
                        Ink(
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/planing.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Planejamenmtos',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),

            //menu
            //Padding(
            //  padding: const EdgeInsets.all(5),
            //  child: Column(
            //    children: [
            //      Row(
            //        children: [
            //          InkWell(
            //            onTap: () {}, // Handle your callback.
            //            splashColor: Colors.brown.withOpacity(0.5),
            //            child: Ink(
            //              height: 100,
            //              width: 100,
            //              decoration: const BoxDecoration(
            //                image: DecorationImage(
            //                  image: AssetImage('images/woman.jpg'),
            //                  fit: BoxFit.cover,
            //                ),
            //              ),
            //            ),
            //          ),
            //          InkWell(
            //            onTap: () {}, // Handle your callback.
            //            splashColor: Colors.brown.withOpacity(0.5),
            //            child: Ink(
            //              height: 100,
            //              width: 100,
            //              decoration: const BoxDecoration(
            //                image: DecorationImage(
            //                  image: AssetImage('images/woman.jpg'),
            //                  fit: BoxFit.cover,
            //                ),
            //              ),
            //            ),
            //          ),
            //        ],
            //      ),
            //    ],
            //  ),
            //)
          ],
        ),
      ),
    );
  }
}
