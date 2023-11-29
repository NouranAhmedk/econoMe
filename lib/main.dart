import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          // Define the default brightness and colors.
          // colorScheme: ColorScheme.fromSeed(
          //   seedColor: Colors.purple,
          //   brightness: Brightness.dark,
          // ),

          // Define the default `TextTheme`. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.bold,
            ),
            // ···
          ),
        ),
        home: DefaultTabController(length: 4, child: Main()));
  }
}

class Main extends StatelessWidget {
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const TabBarView(
        children: [
          Income2(),
          Center(child: Text('expensice')),
          Center(child: Text('goals')),
          Center(child: Text('stats')),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 250,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ElevatedButton(
                            child: const Text('Close BottomSheet'),
                            onPressed: () => Navigator.pop(context),
                          ),
                          ListTile(
                              leading: Icon(Icons.save),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              tileColor: Colors.green.withAlpha(200),
                              title: Text("add income"),
                              onTap: () {
                                print("sad");
                              }),
                          Divider(thickness: 2, height: 2),
                          ListTile(
                              tileColor: Colors.blue.withAlpha(200),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              title: Text("add budget"),
                              onTap: () {
                                print("sad");
                              }),
                          Divider(thickness: 2, height: 2),
                          ListTile(
                              tileColor: Colors.red.withAlpha(200),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              title: Text("add expenses"),
                              onTap: () {
                                print("sad");
                              }),
                          Divider(thickness: 2, height: 2),
                        ],
                      ),
                    ),
                  );
                });
          },
          shape: const CircleBorder(),
          // mini: false,
          // materialTapTargetSize: MaterialTapTargetSize.padded,
          // elevation: 2.0,
          child: Icon(Icons.add_rounded)),
      // floatingActionButton: CircularMenu(
      //     toggleButtonAnimatedIconData: AnimatedIcons.add_event,
      //     radius: 80,
      //     startingAngleInRadian: pi + pi / 6,
      //     endingAngleInRadian: pi * 1.5 + pi / 3,
      //     items: [
      //       CircularMenuItem(
      //           icon: Icons.home,
      //           onTap: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => const addIncome()),
      //             ); // callback
      //           }),
      //       CircularMenuItem(
      //           icon: Icons.search,
      //           onTap: () {
      //             //callback
      //           }),
      //       CircularMenuItem(
      //           icon: Icons.settings,
      //           onTap: () {
      //             //callback
      //           }),
      //     ]),
      bottomNavigationBar: const BottomAppBar(
        padding: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: TabBar(
          // indicator: TopIndicator(color: Colors.white, height: 3.0),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              text: "Home",
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "transactions",
              icon: Icon(Icons.table_chart),
            ),
            Tab(
              text: "Goals",
              icon: Icon(Icons.wallet_rounded),
            ),
            Tab(
              text: "Stats",
              icon: Icon(Icons.portrait_rounded),
            ),
          ],
        ),
      ),
    );
  }
}

class Income extends StatelessWidget {
  const Income({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Account Balance"),
        Text(
          "1000",
          style: TextStyle(fontSize: 50),
        ),
        Card(
          child: ListTile(
            splashColor: Colors.black12,
            leading: icon_w_border(),
            title: Text("sad"),
            subtitle: Text("sadawi"),
            enableFeedback: true,
            trailing: Column(
              children: [Text("aaaaah"), Text("aaaaah")],
            ),
          ),
        ),
        pic_2text(t1: "income", t2: "2000", color: Colors.blue),
        pic_4text(color: Colors.black12),
      ],
    );
  }
}

class addIncome extends StatelessWidget {
  const addIncome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        )),
        body: Column(
          children: [
            Spacer(),
            Container(
                // margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DropdownMenuItem(
                      child: Text("sad"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("sad"),
                    )
                  ],
                )),
          ],
        ));
  }
}

class Income2 extends StatelessWidget {
  const Income2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.portrait_rounded),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {},
          ),
        ],
        title: Center(
          child: Text("october"),
        ),
      ),
      body: Column(
        children: [
          Text("Account Balance"),
          Text(
            "1000",
            style: TextStyle(fontSize: 50),
          ),
          Card(
            child: ListTile(
              splashColor: Colors.black12,
              leading: icon_w_border(),
              title: Text("sad"),
              subtitle: Text("sadawi"),
              enableFeedback: true,
              trailing: Column(
                children: [Text("aaaaah"), Spacer(), Text("aaaaah")],
              ),
            ),
          ),
          pic_2text(t1: "income", t2: "2000", color: Colors.blue),
          pic_4text(color: Colors.black12),
        ],
      ),
    );
  }
}

class pic_2text extends StatelessWidget {
  const pic_2text(
      {super.key,
      this.t1 = "aaaa",
      this.t2 = "wwww",
      this.color = Colors.deepPurple});
  final String t1;
  final String t2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 200,
      height: 100,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(40)),
      child: Row(
        children: [
          icon_w_border(),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text(t1),
              Spacer(),
              Text(
                t2,
                style: TextStyle(fontSize: 25),
              )
            ],
          )
        ],
      ),
    );
  }
}

class pic_4text extends StatelessWidget {
  final String category;
  final String name;
  final double amount;
  final String interval;
  final Color color;
  const pic_4text(
      {super.key,
      this.category = "Food",
      this.name = "beans",
      this.amount = -1000,
      this.interval = "3 days",
      this.color = Colors.deepPurple});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const addIncome()),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              // width: 165,
              // margin: EdgeInsets.all(10),
              height: 80,
              decoration: BoxDecoration(
                  color: color.withAlpha(10),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  icon_w_border(color: Colors.purple),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        category,
                        style: TextStyle(fontSize: 25),
                      ),
                      Spacer(),
                      Text(
                        name,
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        amount.toString(),
                        selectionColor: Colors.red,
                        style: TextStyle(fontSize: 25, color: Colors.red),
                      ),
                      Spacer(),
                      Text(
                        interval,
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}

class icon_w_border extends StatelessWidget {
  const icon_w_border({super.key, this.color = Colors.deepPurple});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 80,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      margin: EdgeInsets.only(right: 22),
      decoration: BoxDecoration(
          color: color.withAlpha(25), borderRadius: BorderRadius.circular(20)),
      child: Icon(Icons.mp, color: color, size: 40),
    );
  }
}
