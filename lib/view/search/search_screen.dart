import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_continner.dart';
import 'package:foodpanda/custom%20widget/app_textfield.dart';

import '../../custom widget/app_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextField(
                controller: search,
                pIcons: Icon(Icons.search_rounded, size: 30),
                hindText: "Search for food",
                hTStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
                ),
                isDense: true,
                filled: true,
                fillColor: Colors.grey.shade200,
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
                obscureText: true,
              ),
              // SizedBox(height: 80,),
              // AppText(text: "Popular Product",fontWeight: FontWeight.bold,fontSize: 22,),
              // SizedBox(
              //   height: 200,
              //   width: 200,
              //   child: ListView.builder(
              //     itemCount: 1,
              //     itemBuilder: (context,index){
              //       return Card(
              //         elevation: 3,
              //         color: Colors.green,
              //       );
              //     },
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
