import "package:flutter/material.dart";

void main() {
  runApp(FirstProject());
}

class FirstProject extends StatelessWidget {
  const FirstProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,

        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: .all(30),

              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 450,
                ),

                child: Column(
                  mainAxisAlignment: .center,
                  spacing: 15,

                  children: [

                    // Person icon
                    CircleAvatar(
                      radius: 48,
                      backgroundColor:Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 65,
                        color: Colors.blue,
                      ),
                    ),

                    SizedBox(height: 5),

                    // Welcome Back
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: .bold,
                        color: Colors.black,
                      ),
                    ),

                    // Subtitle
                    Text(
                      "Sign in to continue",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),

                    SizedBox(height: 5),

                    // Google and Apple buttons
                    Row(
                      spacing: 12,

                      children: [

                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},

                            style: OutlinedButton.styleFrom(
                              padding: .symmetric(
                                vertical: 15,
                              ),
                              side: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(9),
                              ),
                            ),

                            child: Row(
                              mainAxisAlignment:
                                  .center,

                              children: [
                                Text(
                                  "G",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: .bold,
                                    color: Colors.blue,
                                  ),
                                ),

                                SizedBox(width: 8),

                                Text(
                                  "Continue with Google",
                                  style: TextStyle(
                                    color: Colors.black,

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},

                            style: OutlinedButton.styleFrom(
                              padding: .symmetric(
                                vertical: 15,
                              ),
                              side: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(9),
                              ),
                            ),

                            child: Row(
                              mainAxisAlignment:
                                  .center,

                              children: [

                                Icon(
                                  Icons.apple,
                                  color: Colors.black,
                                  size: 22,
                                ),

                                SizedBox(width: 8),

                                Text(
                                  "Continue with Apple",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // OR
                    Row(
                      spacing: 15,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade300,
                          ),
                        ),

                        Text(
                          "or",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),

                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ],
                    ),

                    // Email
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.grey,
                        ),

                        hintText: "Email address",

                        border: OutlineInputBorder(
                          borderRadius: .circular(9),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: .circular(9),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),

                    // Password
                    TextField(
                      obscureText: true,

                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.grey,
                        ),

                        suffixIcon: Icon(
                          Icons.visibility_outlined,
                          color: Colors.grey,
                        ),

                        hintText: "Password",

                        border: OutlineInputBorder(
                          borderRadius: .circular(9),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: .circular(9),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),

                    // Login button
                    SizedBox(
                      width: .infinity,
                      height: 52,

                      child: ElevatedButton(
                        onPressed: () {
                          print("Login");
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: .circular(9),
                          ),
                        ),

                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: .bold,
                          ),
                        ),
                      ),
                    ),

                    // Don't have an account?
                    Row(
                      mainAxisAlignment: .center,

                      children: [

                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),

                        TextButton(
                          onPressed: () {},

                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Forgot password
                    TextButton(
                      onPressed: () {},

                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
