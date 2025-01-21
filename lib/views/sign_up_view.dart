import 'package:chat/views/home_view.dart';
import 'package:chat/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("images/account.png"),
          Expanded(
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xFF4888A2),
                  Color(0xFF33738A),
                  Color(0xFF81b7cf),
                  Color(0xFF81b7cf),
                ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const CustomTextField(
                      hintText: 'Name',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const CustomTextField(hintText: 'Email'),
                    const SizedBox(
                      height: 30,
                    ),
                    const CustomTextField(hintText: 'Password'),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Sign in",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Material(
                              elevation: 5,
                              borderRadius: BorderRadius.circular(60),
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF4C7296),
                                    borderRadius: BorderRadius.circular(60)),
                                child: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account? ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginView(),
                              ));
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 170,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
