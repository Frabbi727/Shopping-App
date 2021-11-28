import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/product_grid.dart';

enum FiletrOptions{
  Favourite,All,

}

class ProductOverviewScreen extends StatefulWidget {
  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavourites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FiletrOptions selectedValue) {
              print(selectedValue);
              setState(() {
                if(selectedValue ==FiletrOptions.Favourite){
                  _showOnlyFavourites=true;
                
                }else{
                  _showOnlyFavourites=false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: FiletrOptions.Favourite,
              ),
              PopupMenuItem(
                child: Text('Show all'),
                value: FiletrOptions.All,
              ),
            ],
          ),
        ],
      ),
      body: ProductGrid(_showOnlyFavourites),
    );
  }
}
