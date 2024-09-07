import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tv_channel_project/Widget/MovieScreen.dart';

class SpashoScreen extends StatelessWidget {
  final List<Map<String, dynamic>> mocjson = [
    {
      "img":
          "https://assetscdn1.paytm.com/images/cinema/GOAT-608x800-2-8b060d60-66b8-11ef-8bfd-85c2f3bcaac6.jpg?format=webp&imwidth=322",
      "title": "Bloody Daddy",
      "subtitle": "Movies in Hyderabad",
      "rating": 7,
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAOiSKuHoa2-DIbzFIm0dQpNkJU0kodFq2Q&s",
      "title": "Karaven",
      "subtitle": "Strike Leads Sony",
      "rating": 9,
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/en/thumb/1/19/Blade_movie.jpg/220px-Blade_movie.jpg",
      "title": "Marvel",
      "subtitle": "Marvel Movies",
      "rating": 10,
    },
    {
      "img":
          "https://cdn.marvel.com/content/1x/antmanandthewaspquantumania_lob_crd_03.jpg",
      "title": "Devara",
      "subtitle": "Upcoming Movies,",
      "rating": 8,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Filtrate',
                      style: TextStyle(
                          fontSize: 40.sp,
                          color: Color(0xFF7668A9),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Icon(Icons.panorama_fisheye_outlined),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Movie',
                      style: TextStyle(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'See All',
                              style: TextStyle(
                                  fontSize: 20.sp, color: Color(0xFF7668A9)),
                            )),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      mocjson.length,
                      (index) {
                        var data = mocjson[index];
                        return MovieScreen(
                          img: data['img'],
                          title: data["title"],
                          Subtitle: data["subtitle"],
                          Rating: data['Rating'].toString(),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Icon(Icons.panorama_fisheye_outlined),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'TV Series',
                      style: TextStyle(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'See All',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Color(0xFF7668A9),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      mocjson.length,
                      (index) {
                        var data = mocjson[index];
                        return MovieScreen(
                          img: data['img'],
                          title: data["title"],
                          Subtitle: data["subtitle"],
                          Rating: data['Rating'].toString(),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Icon(Icons.panorama_fisheye_outlined),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Music',
                      style: TextStyle(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'See All',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Color(0xFF7668A9),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      mocjson.length,
                      (index) {
                        var data = mocjson[index];
                        return MovieScreen(
                          img: data['img'],
                          title: data["title"],
                          Subtitle: data["subtitle"],
                          Rating: data['Rating'].toString(),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xFF2E2451),
          onTap: (index) {},
          color: Color(0xFF7668A9),
          height: 60.h,
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 30.sp,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 30.sp,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 30.sp,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
              size: 30.sp,
            ),
          ]),
    );
  }
}
