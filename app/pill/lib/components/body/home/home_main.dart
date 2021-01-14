import 'package:flutter/material.dart';
import 'package:pill/utility/palette.dart';
// util
import '../../../utility/input_decoration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: SearchBar(),
          ),
          //  Expanded(
          //    flex: 3,
          //  ),
          //  Expanded(
          //    flex: 3,
          //  ),
          //  Expanded(
          //    flex: 3,
          //  )
        ],
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 7,
            child: TextFormField(
              controller: searchController,
              decoration: inputDecoration(),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                color: Colors.white
              ),
              child: RaisedButton(
              onPressed: null,
              child: ImageIcon(AssetImage('assets/icons/search-grey.png'),),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(20),
              //   side: BorderSide.none
              // ),
              splashColor: colorThemeGreen,
              ),
            ),
          )          
        ],
      ),
    );
  }
}
