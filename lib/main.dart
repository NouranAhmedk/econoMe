import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

void main() => runApp(const MyApp());

class Add extends StatelessWidget {
  const Add({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
              child: Text("Add"),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            )),
        body: Column(
          children: [
            const Spacer(),
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
                    const DropdownMenuItem(
                      child: Text("sad"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("sad"),
                    )
                  ],
                )),
          ],
        ));
  }
}

class Edit extends StatelessWidget {
  const Edit({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Edit"),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            )),
        body: Column(
          children: [
            const Spacer(),
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
                    const DropdownMenuItem(
                      child: Text("sad"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("sad"),
                    )
                  ],
                )),
          ],
        ));
  }
}

class icon_w_border extends StatelessWidget {
  final Color color;
  const icon_w_border({super.key, this.color = Colors.deepPurple});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 80,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      margin: const EdgeInsets.only(right: 22),
      decoration: BoxDecoration(
          color: color.withAlpha(25), borderRadius: BorderRadius.circular(20)),
      child: Icon(Icons.mp, color: color, size: 40),
    );
  }
}

class Income extends StatelessWidget {
  const Income({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
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

class Backlog extends StatelessWidget {
  const Backlog({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text(
            "1000",
            style: TextStyle(fontSize: 50),
          ),
          pic_4text(color: Colors.black12),
        ],
      ),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.portrait_rounded),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Mainsettings()),
            )
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {},
          ),
        ],
        title: const Center(
          child: Text("sad"),
        ),
      ),
      body: const TabBarView(
        children: [
          Backlog(),
          Center(child: Text('expensice')),
          Center(child: Text('goals')),
          Center(child: Text('stats')),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Add()),
            );
          },
          shape: const CircleBorder(),
          // mini: false,
          // materialTapTargetSize: MaterialTapTargetSize.padded,
          // elevation: 2.0,
          child: const Icon(Icons.add_rounded)),
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
              text: "Backlog",
              icon: Icon(Icons.backpack),
            ),
            Tab(
              text: "Todo",
              icon: Icon(Icons.access_time),
            ),
            Tab(
              text: "Doing",
              icon: Icon(Icons.adjust),
            ),
            Tab(
              text: "Done",
              icon: Icon(Icons.check_circle_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

class Mainsettings extends StatelessWidget {
  final Color color;
  const Mainsettings({super.key, this.color = Colors.deepPurple});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        )),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: const Text('Common'),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: const Icon(Icons.language),
                  title: const Text('Language'),
                  value: const Text('English'),
                ),
                SettingsTile.switchTile(
                  onToggle: (value) {},
                  initialValue: true,
                  leading: const Icon(Icons.format_paint),
                  title: const Text('Enable custom theme'),
                ),
              ],
            ),
          ],
        ));
  }
}

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
        home: const DefaultTabController(length: 4, child: Main()));
  }
}

class pic_2text extends StatelessWidget {
  final String t1;
  final String t2;
  final Color color;
  const pic_2text(
      {super.key,
      this.t1 = "aaaa",
      this.t2 = "wwww",
      this.color = Colors.deepPurple});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 200,
      height: 100,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(40)),
      child: Row(
        children: [
          const icon_w_border(),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text(t1),
              const Spacer(),
              Text(
                t2,
                style: const TextStyle(fontSize: 25),
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
        margin: const EdgeInsets.all(10),
        child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Edit()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              // width: 165,
              // margin: EdgeInsets.all(10),
              height: 80,
              decoration: BoxDecoration(
                  color: color.withAlpha(10),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const icon_w_border(color: Colors.purple),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        category,
                        style: const TextStyle(fontSize: 25),
                      ),
                      const Spacer(),
                      Text(
                        name,
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        amount.toString(),
                        selectionColor: Colors.red,
                        style: const TextStyle(fontSize: 25, color: Colors.red),
                      ),
                      const Spacer(),
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
