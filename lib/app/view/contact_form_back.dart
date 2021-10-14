import 'package:projeto_flutter/app/domain/services/contact_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:projeto_flutter/app/domain/entities/contact.dart';

class ContactFormBack{
  Contact contact;
  var _service = GetIt.I.get<ContactService>();
  bool _nameIsValid;
  bool _emailIsValid;
  bool _phoneIsValid;

  bool get isValid => _nameIsValid && _emailIsValid && _phoneIsValid;


// diferenciar novo com alteração
ContactFormBack(BuildContext context){
  var parameter = ModalRoute.of(context).settings.arguments;
  contact = (parameter == null)? Contact(): parameter;  
}

//salvar
save() async{
  await _service.save(contact);
}

//validações
String validateName(String name){
  try{
    _service.validateName(name);
    _nameIsValid = true;
    return null; 
  }catch(e){
    _nameIsValid = false;
    return e.toString();
  }
}

String validateEmail(String email){
  try{
    _service.validateEmail(email);
    _emailIsValid = true;
    return null; 
  }catch(e){
    _emailIsValid = false;
    return e.toString();
  }
}

String validatePhone(String phone){
  try{
    _service.validatePhone(phone);
    _phoneIsValid = true;
    return null; 
  }catch(e){
    _phoneIsValid = false;
    return e.toString();
  }
}


}