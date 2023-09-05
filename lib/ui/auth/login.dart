import 'package:flutter/material.dart';
import 'package:nexus_2/ui/college/main_home_screen.dart';
// import 'package:nexus_2/ui/home/home_screen.dart';
import 'package:nexus_2/ui/home/widgets/button/button_filled.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordNotVisible = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: screenHeight / 40,
          ),
          // Padding(
          //   padding: EdgeInsets.symmetric(
          //     vertical: screenHeight / 54.8125,
          //     horizontal: screenWidth / 12.84375,
          //   ),
          // child:
          Column(
            children: [
              TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter email",
                  labelText: "Email",
                  prefixIcon: const Icon(
                    Icons.person_outline,
                    // size: screenHeight / 29.2333,
                    color: Colors.white,
                  ),
                  labelStyle: const TextStyle(color: Colors.grey
                      // fontSize: screenHeight / 54.8125,
                      ),
                  hintStyle: TextStyle(
                    fontSize: screenHeight / 53,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Email cannot be empty";
                  }
                  return null;
                },
              ),
              // SizedBox(
              //   height: screenHeight / 87.7,
              // ),
              TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                controller: _passwordController,
                obscureText: _passwordNotVisible,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  labelText: "Password",
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    // size: screenHeight / 29.2333,
                    color: Colors.white,
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                    // fontSize: screenHeight / 54.8125,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _passwordNotVisible = !_passwordNotVisible;
                      });
                    },
                    icon: Icon(
                      _passwordNotVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      // size: screenHeight / 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password cannot be empty";
                  } else if (value.length < 6) {
                    return "Password must be atleast 6 characters long";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: screenHeight / 10,
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen2())),
                child: ButtonFilled(
                  label: 'Log In',
                  height: screenHeight / 15,
                  width: screenWidth / 10,
                  borderRadius: screenWidth / 10,
                  backgroundColor: Colors.white,
                  labelColor: Colors.black,
                ),
              ),
              // SizedBox(),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Don't have an account? Register here.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
            ],
          ),
          //   ),
        ],
      ),
    );
  }
}
