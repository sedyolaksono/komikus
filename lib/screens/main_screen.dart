import 'package:flutter/material.dart';
import 'package:furniture_app/main.dart';
import 'package:furniture_app/screens/favorite.dart';
import 'package:furniture_app/screens/home.dart';
import 'package:furniture_app/screens/library.dart';
import 'package:furniture_app/screens/login.dart';
import 'package:furniture_app/screens/profile.dart';

//import 'package:flutter/services.dart';



void main() => runApp(MyApp());

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  final _layoutPage = [
    Home(),
    Library(),
    Favorite(),
    Profile(),
  ];
  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setSystemUIOverlayStyle(
    //SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.blue[200]));
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            title: Text('Home')
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books), 
            title: Text('Library')
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite), 
            title: Text('Favorite')
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), 
            title: Text('Profile')
            ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:furniture_app/screens/home.dart';
// //import 'package:flutter_icons/flutter_icons.dart';

// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   PageController _pageController;
//   int _page = 0;

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       body: PageView(
//         physics: NeverScrollableScrollPhysics(),
//         controller: _pageController,
//         onPageChanged: onPageChanged,
//         children: List.generate(4, (index) => Home()
//         ),
//       ),

//       bottomNavigationBar: Theme(
//         data: Theme.of(context).copyWith(
//           // sets the background color of the `BottomNavigationBar`
//           canvasColor: Theme.of(context).primaryColor,
//           // sets the active color of the `BottomNavigationBar` if `Brightness` is light
//           primaryColor: Theme.of(context).accentColor,
//           textTheme: Theme
//               .of(context)
//               .textTheme
//               .copyWith(caption: TextStyle(color: Colors.grey[500]),
//           ),
//         ),
//         child: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               title: Text('Home'),
//             ),

//             BottomNavigationBarItem(
//               icon: Icon(Icons.library_books),
//               title: Text('Library'),
//             ),

//             BottomNavigationBarItem(
//               icon: Icon(Icons.favorite),
//               title: Text('Favorite'),
//             ),

//             BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle),
//               title: Text('Profile'),
//             ),
//           ],
//           onTap: navigationTapped,
//           currentIndex: _page,
//         ),
//       ),
//     );
//   }

//   void navigationTapped(int page) {
//     _pageController.jumpToPage(page);
//   }

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(initialPage: 2);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _pageController.dispose();
//   }

//   void onPageChanged(int page) {
//     setState(() {
//       this._page = page;
//     });
//   }
// }
