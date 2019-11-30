import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:furniture_app/screens/details.dart';
import 'package:furniture_app/util/data.dart';
import 'package:furniture_app/widgets/badge.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchControl = new TextEditingController();


  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Center(
            child: IconBadge(
              icon: Feather.getIconData("bell"),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: <Widget>[
          
          Center(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "KOMIKUS",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(height: 10),

          Padding(
            padding: EdgeInsets.only(right: 0),
            child: Card(
              elevation: 5.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white,),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Cari Komik...",
                    prefixIcon: Icon(Icons.search,
                      color: Colors.black,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                  maxLines: 1,
                  controller: _searchControl,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),


          Container(
            height: 275,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: furnitures.length,
              itemBuilder: (BuildContext context, int index) {
                Map furniture = furnitures[index];

                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return Details();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 275,
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            furniture['genre'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "${furniture["img"]}",
                              height: 240,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Komik Terpopuler",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),

              FlatButton(
                child: Text(
                  "Lihat Semua",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                onPressed: (){},
              ),
            ],
          ),

          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: popular.length,
              itemBuilder: (BuildContext context, int index) {
                Map furniture = popular[index];

                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return Details();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "${furniture["img"]}",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),

        ],
      ),
    );
  }
}
