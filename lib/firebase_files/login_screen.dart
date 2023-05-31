import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nitda_project/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errormessage = '';
  bool isLoggedIn = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async{
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _controllerEmail.text, 
        password: _controllerPassword.text
        ).then((value) => {
          Navigator.push(context, MaterialPageRoute(builder: ((context) => HomePage())))
          });
    } on FirebaseAuthException catch (e) {
      setState(() {
        errormessage = e.message;
      });
    }
  }
  
  Future<void> createUserWithEmailAndPassword() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _controllerEmail.text, 
        password: _controllerPassword.text
        ).then((value) { //after user has been created push the home page'
          Navigator.push(context, MaterialPageRoute(builder: ((context) => HomePage())));
        });
    } on FirebaseAuthException catch(e){
      setState(() {
        errormessage = e.message;
        
      });
    }
  }

  Widget _logo() {
    return SizedBox(
      height: 200,
      width: 200,
      child: Image.asset('assets/images/NITDA_400x400.jpg'));
  }

  Widget _entryField(String text, TextEditingController controller, IconData icon, bool isPasswordType){
    return TextField(
      controller: controller,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white.withOpacity(0.9)),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.white70,
        ),
        labelText: text,
        labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.green.shade900.withOpacity(0.9),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)
        )
      ),
      keyboardType: isPasswordType ? TextInputType.visiblePassword : TextInputType.emailAddress,
    );
  }

   Widget _errorMessage(){
    return Text(errormessage == '' ? '' : 'Hmm ? $errormessage');
  }

  Widget _submitButton(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(onPressed: isLoggedIn ? signInWithEmailAndPassword :  createUserWithEmailAndPassword,
       child: Text(isLoggedIn? 'Log In' : 'Register'),
       style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
        backgroundColor: MaterialStatePropertyAll( Color.fromARGB(255, 27, 94, 32).withOpacity(0.9)),
        ),
       ),
    );
  }

  Widget _loginOrRegisterButton(){
    return TextButton(onPressed: (){
    setState(() {
      isLoggedIn = !isLoggedIn;
    });
    },
    child: Text(isLoggedIn? 'Create a new account' : 'Log In'));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _logo(),
            _entryField('Email', _controllerEmail, Icons.mail_lock_outlined, false),
            const Padding(padding: EdgeInsets.all(4.0)),
            _entryField('Password', _controllerPassword, Icons.lock_outline, true),
            _errorMessage(),
            _submitButton(),
            _loginOrRegisterButton()
          ],
        ),
      ),
    );
  }
}