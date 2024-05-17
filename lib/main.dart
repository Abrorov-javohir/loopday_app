import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LoopDayApp());
}

class LoopDayApp extends StatelessWidget {
  const LoopDayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final String correctEmail = "javohir@.";
  final String correctPassword = "123";

  String errorMessage = '';

  void _login() {
    setState(() {
      errorMessage = '';
    });

    if (emailController.text == correctEmail &&
        passwordController.text == correctPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SeventhPage(),
        ),
      );
    } else {
      setState(() {
        errorMessage = 'Email yoki parol noto\'g\'ri';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              "Welcome back",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              "Let's Login to Connect your email",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefix: Icon(Icons.email),
                suffix: Icon(Icons.remove_red_eye),
                labelText: "Email Address",
                border: OutlineInputBorder(),
                hintText: "Name@example.com",
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: passwordController,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefix: Icon(Icons.key),
                suffix: Icon(CupertinoIcons.eye_slash_fill),
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            if (errorMessage.isNotEmpty)
              Text(
                errorMessage,
                style: const TextStyle(color: Colors.red),
              ),
            const SizedBox(height: 20),
            const Text("Forgot Password?", style: TextStyle(fontSize: 15)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(fontSize: 15)),
                TextButton(
                  onPressed: () {},
                  child: const Text("Sign up here",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
            const SizedBox(height: 100),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  "Log in",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    color: Colors.grey,
                    child: TextButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.apple,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Apple",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    width: 100,
                    color: Colors.grey,
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://cdn-teams-slug.flaticon.com/google.jpg",
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "Google",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "By continuing, you agree to Enter your account? ",
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text(
                              "Use carefully and do not share your account"),
                        );
                      },
                    );
                  },
                  child: const Text(
                    "Terms of use",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text(
                              "If you cannot enter your account contact us\nNumber:+998 90 062 09 10"),
                        );
                      },
                    );
                  },
                  child: const Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SeventhPage extends StatelessWidget {
  const SeventhPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              "Register",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              "Create your account for your schedule",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefix: Icon(Icons.person),
                labelText: "Your name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefix: Icon(Icons.email),
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefix: Icon(Icons.key),
                suffix: Icon(CupertinoIcons.eye_slash_fill),
                labelText: "New Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefix: Icon(Icons.key),
                suffix: Icon(CupertinoIcons.eye_slash_fill),
                labelText: "Repeat Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Forgot Password?", style: TextStyle(fontSize: 15)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(fontSize: 15)),
                TextButton(
                    onPressed: () {},
                    child: const Text("Sign in here",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)))
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tenth()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "By continuing, you agree to Enter your account? ",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text(
                              "Use carefully and do not share your account"),
                        );
                      },
                    );
                  },
                  child: const Text(
                    "Terms of use",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text(
                              "If you cannot enter your account contact us\nNumber:+998 90 062 09 10"),
                        );
                      },
                    );
                  },
                  child: const Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Tenth extends StatefulWidget {
  const Tenth({Key? key}) : super(key: key);

  @override
  _TenthState createState() => _TenthState();
}

class _TenthState extends State<Tenth> {
  late DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Welcome, Mangcoding\nLet's schedule your activities",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
        children: [
          const Row(),
          const Text(
            "Schedule",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Let's schedule your activities",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () async {
              DateTime? newDate = await showDatePicker(
                context: context,
                firstDate: DateTime(1000),
                lastDate: DateTime(2025),
                currentDate: DateTime.now(),
              );
              if (newDate != null) {
                setState(() {
                  date = newDate;
                });
              }
            },
            child: Text(
              date.format(),
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                width: 150,
                height: 100,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "All",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                width: 150,
                height: 100,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "New",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1000),
                    lastDate: DateTime(2025),
                    currentDate: DateTime.now(),
                  );
                  if (newDate != null) {
                    setState(() {
                      date = newDate;
                    });
                  }
                },
                child: Text(
                  date.format(),
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Icon(Icons.punch_clock_outlined),
              Text("10.00 AM - 01.00 PM")
            ],
          ),
          Text(
            "Development of software for the protection of information resources",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1000),
                    lastDate: DateTime(2025),
                    currentDate: DateTime.now(),
                  );
                  if (newDate != null) {
                    setState(() {
                      date = newDate;
                    });
                  }
                },
                child: Text(
                  date.format(),
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Icon(Icons.punch_clock_outlined),
              Text("10.00 AM - 01.00 PM")
            ],
          ),
          Text(
            "Development of software for the protection of information resources",
            textAlign: TextAlign.center,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: Icon(Icons.add),
    );
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

const List<String> months = [
  "Yanvar",
  "Fevral",
  "Mart",
  "Aprel",
  "May",
  "Iyun",
  "Iyul",
  "Avgust",
  "Sentyabr",
  "Oktyabr",
  "Noyabr",
  "Dekabr"
];

extension Dateformat on DateTime {
  String format() {
    return "$day ${months[month - 1]} ${year}";
  }
}
