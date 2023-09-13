import 'package:flutter/material.dart';

void main(){
runApp(const MaterialApp(
  home: Scaffold(
// TODO: Add app bar (102)
// TODO: Add a grid view (102)
body: Center(
child: Text('You did it!'),
),
  // TODO: Set resizeToAvoidBottomInset (101)
  resizeToAvoidBottomInset: false,
  ) ,
));
}

class LoginPage extends StatefulWidget {
   LoginPage({Key? key}) : super(key: key);

   final _usernameController = TextEditingController();
   final _passwordController = TextEditingController();

  @override
  _LoginPageState createState() => _LoginPageState();

  // TODO: Add text editing controllers (101)

}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),

                const Text('SHRINE'),
              ],
            ),
            const SizedBox(height: 120.0),
            // TODO: Remove filled: true values (103)
            // TODO: Add TextField widgets (101)

            // TODO: Add button bar (101)

            // TODO: Add TextField widgets (101)

// [Name]
            TextField(
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
                controller: _usernameController,

              ),
            ),
// spacer
            const SizedBox(height: 12.0),
// [Password]
            TextField(
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
              controller: _passwordController,
            ),

            // TODO: Add button bar (101)
            OverflowBar(
              alignment: MainAxisAlignment.end,
              // TODO: Add a beveled rectangular border to CANCEL (103)
              children: <Widget>[
                // TODO: Add buttons (101)

              ],
            ),

          // TODO: Add buttons (101)
        TextButton(
        child: const Text('CANCEL'),
    onPressed: () {

      _usernameController.clear();
      _passwordController.clear();
    // TODO: Clear the text fields (101)
    },
    ),
    // TODO: Add an elevation to NEXT (103)
    // TODO: Add a beveled rectangular border to NEXT (103)
    ElevatedButton(
    child: const Text('NEXT'),
    onPressed: () {
    // TODO: Show the next page (101)
      Navigator.pop(context);
    },
    ),
          ],
        ),
      ),
    );
  }
}