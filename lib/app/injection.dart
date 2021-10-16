//O objetivo da injeção de dependência é manter um baixo acoplamento entre diferentes módulos de um sistema.
import 'package:projeto_flutter/app/database/sqlite/dao/contact_dao_impl.dart';
import 'domain/interfaces/contact_dao.dart';
import 'domain/services/contact_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

setupInjection()async{
  GetIt getIt = GetIt.I;

  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  getIt.registerSingleton<ContactDAO>(ContactDAOImpl());
  getIt.registerSingleton<ContactService>(ContactService());
}