import 'package:flutter/material.dart';

class ItemFoodWidget extends StatelessWidget {
  Map<String,dynamic> foodMap;

  ItemFoodWidget({required this.foodMap});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.all(12),
      // height: 130,
      // width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 12,
              offset: const Offset(4, 4),
            ),
          ]),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              foodMap["image"],
              height: 110,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: Column(children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      foodMap["company"],
                      // style: TextStyle(
                      //   fontSize: 16,
                      // ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffFABE4F),
                          size: 15,
                        ),
                        Text(
                          foodMap["rate"],
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xffFABE4F),
                          ),
                        ),
                      ],
                    ),
                  ]),
              const SizedBox(height: 6,),
              Text(
                foodMap["description"],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.restaurant_menu_outlined,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        foodMap["category"],
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: 1.0,
                      ),
                      Text(
                        foodMap["distance"] + "km",
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.price_check,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        foodMap["price"] +"/person",
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
