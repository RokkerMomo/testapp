import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List products =[
  "Salad",
  "Cake",
  "Pie",
  "Pizza",
  "Smoothie",
  "Pancake"
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBar(),
          Padding(
           padding: EdgeInsets.only(left: 20),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [

               const Text(
                "Category",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 10),
                 child: SizedBox(
                  height: 150,
                 // color: const Color.fromARGB(255, 71, 4, 255),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                             color: index%2 <=0 ? const Color.fromARGB(255, 218, 188, 188) : const Color.fromARGB(255, 126, 165, 197),
                          ),
                         child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                   color: Colors.white,
                                ),
                                child: Icon(Icons.favorite,
                                color: Colors.red,),
                              ),
                               Text(products[index],
                               style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                               ),)
                            ],
                          ),
                        ),
                      );
                  }),
                 ),
               )
             ],
           ),
         )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container SearchBar() {
    return Container(  
          margin: const EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 40),
          decoration:  BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:  const Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0,
              )
            ]
          ),

          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Search",
              contentPadding: const EdgeInsets.all(15),
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)
              )
            ),
          ),
        );
  }

  AppBar appbar() {
    return AppBar(
      title: const Text(
        "Breakfast",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0.0,

      leading: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:  const Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Color.fromARGB(255, 0, 0, 0),
        )

      ),
      actions: [
        GestureDetector(
          onTap: (){
            print("test");
          },
          child: Container(
            width: 37,
            height: 37,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.more_horiz,
          color: Color.fromARGB(255, 0, 0, 0),
        )

      ),
        ),
        ],

    );
  }
}