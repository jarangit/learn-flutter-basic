import 'package:flutter/material.dart';
import 'package:my_app/myCard.dart';
import 'package:my_app/foodMenu.dart';
import 'package:my_app/myLogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My app",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "Add count";
  int count = 0;
  List<FoodMenu> foodMenu = [
    FoodMenu("Pizza", "250 US", "assets/images/image1.jpeg"),
    FoodMenu("Chicken", "50 US", "assets/images/image2.jpeg"),
  ];

  void onAdd() {
    setState(() {
      count += 1;
      if (count > 0) {
        title = "counting";
      }
    });
  }

  void onClear() {
    setState(() {
      count = 0;
      title = "Clear count";
    });
  }

  void onSelectedMenu(FoodMenu value) {
    print(value.name);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> renderList(int count) {
      List<Widget> dataList = [];
      for (var i = 0; i < count; i++) {
        var menu = ListTile(
          title: Text('menu ${i + 1}'),
          subtitle: Text("submenu"),
        );
        dataList.add(menu);
      }
      return dataList;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New app ",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$title"),
          Text(
            'Count: $count',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 16),
          ElevatedButton(onPressed: onClear, child: Text("clear")),
          MyCard(title: 'title'),
          MyLogin(),
          Expanded(
              child: ListView.builder(
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) {
                    FoodMenu food = foodMenu[index];
                    return ListTile(
                      leading: Image.asset(food.img),
                      title: Text(food.name),
                      subtitle: Text(food.price),
                      onTap: () => onSelectedMenu(food),
                    );
                  })),

          // Expanded(
          //     child: ListView(
          //   children: renderList(15),
          // ))
        ],
      )),
      floatingActionButton:
          FloatingActionButton(onPressed: onAdd, child: Icon(Icons.add)),
    );
  }
}
