import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:practise/model/user_Model.dart';
import 'package:practise/view/product_tile.dart';

import '../controller/home_controller.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  // ProductController productController = Get.put(ProductController());
  List<UserModel> Userdata = [];

  Future<List<UserModel>> getAPiCalling() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        Userdata.add(UserModel.fromJson(i));
      }
      return Userdata;
    } else
      return Userdata;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // Get.to(SearchPage());
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (ctx)=> SearchPage()
              // )
              // );
            },
            icon: const Icon(
              Icons.search_outlined,
              size: 40,
            ),
          )
        ],
        title: const Text(
          "Api Handling",
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[400],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text("Api Calling"),
          SizedBox(
            height: 50,
          ),
          FutureBuilder(
              future: getAPiCalling(),
              builder: ((context, AsyncSnapshot<List<UserModel>> snapshot) {
                if (!snapshot.hasData) {
                  return Text("loading");
                } else {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: Userdata.length,
                        itemBuilder: (_, index) {
                          return Column(
                            children: [
                              Text(Userdata[index].title.toString()),
                              const SizedBox(
                                height: 10,
                              ),
                              // ignore: prefer_interpolation_to_compose_strings
                              Text("Description : \n" +
                                  Userdata[index].body.toString()),
                              const SizedBox(
                                height: 10,
                              ),
                              Text("UserId : \n" +
                                  snapshot.data![index].id.toString())
                            ],
                          );
                        }),
                  );
                }
              }))
        ],
      ),
    ));
  }
}
