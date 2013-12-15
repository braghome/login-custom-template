import 'package:polymer/polymer.dart';
import 'dart:html';
import 'dart:async';


/**
 * A Polymer click counter element.
 */
@CustomTag('login-polymer')
class Login extends PolymerElement {
  String _submitInputString;
  @observable bool loggedIn = false;
  @observable String password = "";
  @published int minLength = 8;
  @published int maxLength = 14;
  
  Login.created() : super.created() {
  }
  
  void changeIt(Event e){
    loggedIn = true;
    new Future(() {  
      var changeSome = shadowRoot.querySelector('#helloChangeIt');
      changeSome.text = "Welcome, was just loged it";
    });
  }
  
//  void passwordChanged(String oldPassword) {
//    print(oldPassword); this is just for test
//    print(password);
//  }    

}

