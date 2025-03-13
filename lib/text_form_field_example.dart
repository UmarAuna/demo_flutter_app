import 'package:flutter/material.dart';

class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  TextEditingController controller = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String displayText = '';
  bool passwordVisible = false;
  bool isChecked = false;
  int result = 0;

  void calculate() {
    int num1 = int.parse(number1.text);
    int num2 = int.parse(number2.text);
    setState(() {
      result = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('TextFormField'),
        ),
        body: Column(
          children: [
            Form(
              key: formKey,
              child: Column(children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: number1,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.blue),
                    onChanged: (value) {
                      print('Text changed: $value');
                    },
                    //maxLength: 10,
                    decoration: const InputDecoration(
                      labelText: 'Number 1',
                      hintText: 'Enter Number 1',
                      icon: Icon(Icons.person),
                      //border: UnderlineInputBorder(),
                      border: OutlineInputBorder(),
                      //prefixIcon: Icon(Icons.person),
                      //suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      } else if (value.length < 5) {
                        return 'Please enter at least 5 characters';
                      }
                      return null; // Return null if the input is valid
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: number2,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.blue),
                    onChanged: (value) {
                      print('Text changed: $value');
                    },
                    //maxLength: 10,
                    decoration: const InputDecoration(
                      labelText: 'Number 2',
                      hintText: 'Enter Number 2',
                      icon: Icon(Icons.person),
                      //border: UnderlineInputBorder(),
                      border: OutlineInputBorder(),
                      //prefixIcon: Icon(Icons.person),
                      //suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      } else if (value.length < 5) {
                        return 'Please enter at least 5 characters';
                      }
                      return null; // Return null if the input is valid
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Text("Result: $result"),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    calculate();
                  },
                  child: const Text('Calculate'),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: userNameController,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.blue),
                    onChanged: (value) {
                      print('Text changed: $value');
                    },
                    //maxLength: 10,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      icon: Icon(Icons.person),
                      //border: UnderlineInputBorder(),
                      border: OutlineInputBorder(),
                      //prefixIcon: Icon(Icons.person),
                      //suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      } else if (value.length < 5) {
                        return 'Please enter at least 5 characters';
                      }
                      return null; // Return null if the input is valid
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Text(controller.text),
                const SizedBox(height: 10),
                TextFormField(
                  controller: controller,
                  obscureText: passwordVisible,
                  //obscureText: true,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    hintText: "Password must contain special character",
                    labelText: "Password",
                    helperText: "Password must contain special character",
                    helperStyle: const TextStyle(color: Colors.green),
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                    //alignLabelWithHint: false,
                    //filled: true,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  //textInputAction: TextInputAction.done,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Validate the form and sign up the user
                    if (formKey.currentState!.validate()) {
                      return;
                    }
                  },
                  child: const Text('Sign Up'),
                ),
                const SizedBox(height: 20),
                Switch(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value;
                      });
                    }),
                Text(isChecked == true ? "Switch is Yes" : "Switch is No"),
              ]),
            ),
          ],
        ));
  }
}
