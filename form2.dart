import 'package:flutter/material.dart';
class FD extends StatefulWidget {
  const FD({Key? key}) : super(key: key);

  @override
  State<FD> createState() => _FD();
}

class _FD extends State<FD> {
  var showpassword = true;

  void togglepassword() {
    setState(() {
      showpassword = !showpassword;
    });
  }

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var email2Controller = TextEditingController();
  var passwordController = TextEditingController();
  var name = '',
      email = '',
      email2 = '',
      password = '';

  @override
  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder( //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.redAccent,
          width: 3,
        )
    );
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.red,
          width: 3,
        )
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login")),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Register Form", style: TextStyle(color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold),),
          )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: nameController,


              decoration: InputDecoration(


                  label: Text(
                    "Name", style: TextStyle(fontSize: 15, color: Colors.black),

                  ),
                  hintText: "Enter Your Name",
                  hintStyle: TextStyle(fontSize: 10)),

            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                controller: emailController,

                decoration: InputDecoration(

                  prefixIcon: Icon(Icons.contact_mail),
                  labelText: "Enter Your Email",
                  labelStyle: TextStyle(
                    color: Colors.red, //<-- SEE HERE
                  ),
                  enabledBorder: myinputborder(),
                  focusedBorder: myfocusborder(),

                )
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: email2Controller,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  label: Text(
                      "email"
                  ),
                  hintText: "Email"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: passwordController,
              obscureText: showpassword,

              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    togglepassword();
                  },
                  child: showpassword ? Icon(Icons.visibility) : Icon(
                      Icons.visibility_off),
                ),
                label: Text("Password"),
                prefixIcon: Icon(Icons.security),
              border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 1200,
              height: 40,
              child: ElevatedButton(onPressed: () {
                setState(() {
                  name = nameController.text;
                  email = emailController.text;
                  email = email2Controller.text;
                  password = passwordController.text;

                  if (name.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Field is empty"))
                    );
                  }
                  else if (email.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("please enter email"))
                    );
                  }
                  else if (email2.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("please enter email2"))
                    );
                  }
                  else if (password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("please enter password"))
                    );
                  }
                }
                );
              },

                  child: Text(
                    "Register", style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  )


              ),
            ),
          ),

        ],

      ),

    );


//create a function like this so that you can use it wherever you want
  }
}