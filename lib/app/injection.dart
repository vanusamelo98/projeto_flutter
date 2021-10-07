//O objetivo da injeção de dependência é manter um baixo acoplamento entre diferentes módulos de um sistema.

import 'package:get_it/get_it.dart';
import 'database/sqlite/dao/contact_dao_impl.dart';
import 'domain/interfaces/contact_dao.dart';

setupInjection(){
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<ContactDAO>(ContactDAOImpl());
}