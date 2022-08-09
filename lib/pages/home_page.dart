import 'package:flutter/material.dart';
import 'package:flutter_codigo_food/data/data_dummy.dart';
import 'package:flutter_codigo_food/widgets/item_food_widget.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Deliver to",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14.0,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/map.svg",
                                height: 20.0,
                                color: Colors.black.withOpacity(0.8),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              const Text(
                                "New York, USA",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          ),
                        ),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: -12,
                            right: -12,
                            child: Container(
                              height: 28,
                              width: 28,
                              padding: const EdgeInsets.all(6.0),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  // borderRadius: BorderRadius.circular(40.0),
                                  color: Color(0xffFF3008),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF3F3F3),
                          hintText: "Search restaurants or foods",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black.withOpacity(0.4),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 16.0,
                          ),
                          prefixIcon: SvgPicture.asset(
                            'assets/icons/search.svg',
                            color: Colors.black.withOpacity(0.4),
                            fit: BoxFit.scaleDown,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xffFF3008),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/filter.svg',
                        color: Colors.white,
                        height: 30,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 26.0,
                ),
                Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://designhub.co/wp-content/uploads/2020/10/Food5EF.jpg",
                      ),
                    ),
                  ),
                ),
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(14.0),
                //   child: Image.network(
                //     "https://designhub.co/wp-content/uploads/2020/10/Food5EF.jpg",
                //     height: 130,
                //     width: double.infinity,
                //     fit: BoxFit.cover,
                //   ),
                // ),
                const SizedBox(
                  height: 12.0,
                ),
                const Text(
                  "Promotions",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Container(
                  height: 260,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://www.localburger.com.co/web/image/725",
                      ),
                    ),
                  ),
                  // child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Container(
                  //       margin: const EdgeInsets.all(22.0),
                  //       width: double.infinity,
                  //       color: Colors.white,
                  //       child: Text("Hola asdasdsa "),
                  //     ),
                  //   ],
                  // ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: const EdgeInsets.all(22.0),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14.0,
                            vertical: 12.0,
                          ),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.88),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                "The Soothing Dessert",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                children: [
                                  ...List.generate(
                                    5,
                                    (index) => const Icon(
                                      Icons.star,
                                      size: 15.0,
                                      color: Color(0xffFABE4F),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  const Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Color(0xffFABE4F),
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6.0,
                                  ),
                                  const Text(
                                    "(260 Reviews)",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.restaurant_menu_outlined,
                                        color: Colors.black45,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "Dessert",
                                        style: TextStyle(
                                          color: Colors.black45,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.black45,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "1.6km",
                                        style: TextStyle(
                                          color: Colors.black45,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.price_check,
                                        color: Colors.black45,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "23/person",
                                        style: TextStyle(
                                          color: Colors.black45,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 12.0,
                ),
                const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          indexSelected = 0;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          margin: EdgeInsets.only(right: 12.0),
                          decoration: BoxDecoration(
                            color: indexSelected == 0
                                ? Color(0xffEE4D2A)
                                : Color(0xffF5F7FB),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Text(
                            "Recommend",
                            style: TextStyle(
                              color: indexSelected == 0
                                  ? Colors.white
                                  : Colors.black45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          indexSelected = 1;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          margin: EdgeInsets.only(right: 12.0),
                          decoration: BoxDecoration(
                            color: indexSelected == 1
                                ? Color(0xffEE4D2A)
                                : Color(0xffF5F7FB),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Text(
                            "Junk food",
                            style: TextStyle(
                              color: indexSelected == 1
                                  ? Colors.white
                                  : Colors.black45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          indexSelected = 2;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          margin: EdgeInsets.only(right: 12.0),
                          decoration: BoxDecoration(
                            color: indexSelected == 2
                                ? Color(0xffEE4D2A)
                                : Color(0xffF5F7FB),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Text(
                            "Steak",
                            style: TextStyle(
                              color: indexSelected == 2
                                  ? Colors.white
                                  : Colors.black45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          indexSelected = 3;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          margin: EdgeInsets.only(right: 12.0),
                          decoration: BoxDecoration(
                            color: indexSelected == 3
                                ? Color(0xffEE4D2A)
                                : Color(0xffF5F7FB),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Text(
                            "Pizza",
                            style: TextStyle(
                              color: indexSelected == 3
                                  ? Colors.white
                                  : Colors.black45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          indexSelected = 4;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          margin: EdgeInsets.only(right: 12.0),
                          decoration: BoxDecoration(
                            color: indexSelected == 4
                                ? Color(0xffEE4D2A)
                                : Color(0xffF5F7FB),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Text(
                            "Sushi",
                            style: TextStyle(
                              color: indexSelected == 4
                                  ? Colors.white
                                  : Colors.black45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          indexSelected = 5;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          margin: EdgeInsets.only(right: 12.0),
                          decoration: BoxDecoration(
                            color: indexSelected == 5
                                ? Color(0xffEE4D2A)
                                : Color(0xffF5F7FB),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Text(
                            "Mexican",
                            style: TextStyle(
                              color: indexSelected == 5
                                  ? Colors.white
                                  : Colors.black45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          indexSelected = 6;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          margin: EdgeInsets.only(right: 12.0),
                          decoration: BoxDecoration(
                            color: indexSelected == 6
                                ? Color(0xffEE4D2A)
                                : Color(0xffF5F7FB),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Text(
                            "Dessert",
                            style: TextStyle(
                              color: indexSelected == 6
                                  ? Colors.white
                                  : Colors.black45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 26.0,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: restaurants.map<Widget>(
                            (Map<String, dynamic> e) => ItemFoodWidget(
                              foodMap: e,
                            ),).toList(),
                  ),
                ),
                // ListView.builder(
                //   shrinkWrap: true,
                //     physics: NeverScrollableScrollPhysics(),
                //     itemCount: 20,
                //     itemBuilder: (BuildContext context, int index){
                //   return ItemFoodWidget();
                // }),
                const SizedBox(
                  height: 12.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
