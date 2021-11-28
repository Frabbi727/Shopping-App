import 'package:flutter/material.dart';
import 'package:shopping_app/screens/product_detail_screen.dart';
import './screens/products_overview_screen.dart';
import './providers/product_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value:  Products(),
      //create: (BuildContext ctx)=> Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor:  Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
       routes: {
         ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
       },
        
      ),
    );
  }
}

//start from 17