import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'search.dart';
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  int _currentindex = 0;
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 2 / 3,
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.brown.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(15))),

             child: Column(children: [
               Align(
                   alignment: Alignment.topCenter,
                   child: ClipRRect(
                     borderRadius: BorderRadius.only(
                         topRight: Radius.circular(15),
                         topLeft: Radius.circular(15)),
                     child: Image.asset(
                       "images/coffee.jpg",
                     ),
                   )),
               Padding(
                 padding: const EdgeInsets.only(top: 40.0),
                 child: Text('Bonten \n \n Fast Coffee \n\n \$ 20.00',textAlign: TextAlign.center,),
               ),
              // Text('Fast Coffee'),
               //Padding(padding: EdgeInsets.all(20),child: Text('Rs. 20.00'),),

             ],),

            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.brown.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.brown.shade200,
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            Container(
                decoration: BoxDecoration(
                    color: Colors.brown.shade200,
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            Container(
                decoration: BoxDecoration(
                    color: Colors.brown.shade200,
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            Container(
                decoration: BoxDecoration(
                    color: Colors.brown.shade200,
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            

            label: "",
            icon: Icon(
              Icons.home_outlined,
            ),
            backgroundColor: Colors.brown.shade200,
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              label: "",
              icon: Icon(
                Icons.search,
              )),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              label: "",
              icon: Icon(
                Icons.star_border_sharp,
              )),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              label: "",
              icon: Icon(
                Icons.location_on_outlined,
                

              )),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });

        },
      ),
    ));
  }
}
