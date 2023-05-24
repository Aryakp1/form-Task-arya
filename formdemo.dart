import 'package:flutter/material.dart';
class DemoFlutter extends StatefulWidget {
  const DemoFlutter({Key? key}) : super(key: key);

  @override
  State<DemoFlutter> createState() => _DemoFlutterState();
}

class _DemoFlutterState extends State<DemoFlutter> {
  var showpassword = true;
  void togglepassword()
  {
    setState(() {
      showpassword=!showpassword;
    });
  }
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  var urlController = TextEditingController();
  var phonenumberController = TextEditingController();
  var caloriesController = TextEditingController();
  var name = '', password = '', email = '', url = '', phonenumber = '',calories = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Demo"),
          backgroundColor: Colors.teal,
        ),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: nameController,

                decoration: InputDecoration(
                  hintText: "Name",

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
               controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",

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
                    child: showpassword?Icon(Icons.visibility):Icon(Icons.visibility_off),
                  ),
                  hintText: "Password",

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
               controller: urlController,
                decoration: InputDecoration(
                  hintText: "Url",

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
               controller: phonenumberController,
                decoration: InputDecoration(
                  hintText: "Phone number",

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
               controller: caloriesController,
                decoration: InputDecoration(
                  hintText: "Calories",

                ),

              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                height: 40,
                child: ElevatedButton(onPressed: () {
                  setState(() {
                    name=nameController.text;
                    email=emailController.text;
                    password=passwordController.text;
                    phonenumber=phonenumberController.text;
                    url=urlController.text;
                    calories=caloriesController.text;
                    if(name.isEmpty)
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Field is empty"))
                        );
                      }
                    if(email.isEmpty)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("please enter email"))
                      );
                    }
                    if(password.isEmpty)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("please enter password"))
                      );
                    }
                    if(phonenumber.isEmpty)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("please enter phonenumber"))
                      );
                    }
                    if(url.isEmpty)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("please enter url"))
                      );
                    }
                    if(calories.isEmpty)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(" enter calories"))
                      );
                    }
                  });
                },

                    child: Text("Submit",style: TextStyle(color: Colors.blue),),
                    style:ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.white54),
                    )
                ),
              ),
            ),


          ],
        )
    );
  }
}