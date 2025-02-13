// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
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
                            // ignore: deprecated_member_use
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/map.svg",
                              height: 20,
                              color: Colors.black.withOpacity(0.8),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              "New York, USA",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Icon(
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
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        ),
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: -11,
                          right: -11,
                          child: Container(
                            height: 22,
                            width: 22,
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 8,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF3F3F3),
                        hintText: "Search restaurants or foods",
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 16,
                        ),
                        prefixIcon: SvgPicture.asset(
                          'assets/icons/search.svg',
                          color: Colors.black.withOpacity(0.4),
                          fit: BoxFit.scaleDown,
                        ),
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none, //no tiene efecto
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'assets/icons/vertical.png',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://media.istockphoto.com/id/1451718801/es/vector/deliciosos-anuncios-de-banner-de-hamburguesas-de-carne-caseras.jpg?s=170667a&w=0&k=20&c=xYTv9_luX4s2fkY0_ri_ZK3xI-Zk-ubu1DH8LtN9q8E=',
                    ),
                  ),
                ),
              ),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(14),
              //   child: Image.network(
              //     'https://img.freepik.com/vector-gratis/banner-venta-comida-rapida-dibujado-mano_23-2150970571.jpg?t=st=1739406614~exp=1739410214~hmac=b2c5b6e5741054a47a7cbd912dbdd70e8ddea781a37f96435b4e6e2444a2d43c&w=1480',
              //   ),
              // ),
              const SizedBox(
                height: 26,
              ),
              Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://www.pequerecetas.com/wp-content/uploads/2020/10/acai-propiedades.jpg',
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Soothing Dessert",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey.withOpacity(0.2),
                                size: 20,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                "(260 Reviews)",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.food_bank,
                                  ),
                                  Text(
                                    "Dessert",
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.map,
                                  ),
                                  Text(
                                    "1.6km",
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.monetization_on,
                                  ),
                                  Text(
                                    "23/person",
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
