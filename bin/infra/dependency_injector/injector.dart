import '../../apis/home_api.dart';
import '../../apis/loginApi.dart';
import '../../models/home_model.dart';
import '../../services/generic_service.dart';
import '../../services/home_service.dart';
import '../db_conection/db_configuration.dart';
import '../db_conection/db_connection.dart';
import '../security/security_service.dart';
import '../security/security_service_imp.dart';
import 'denpendency_injector.dart';

class Injector{
  static DependencyInjector initialize(){
    
    var dependencyInjector = DependencyInjector();
    
    dependencyInjector.register<DbConfiguration>(() => Dbconnection());
    
    dependencyInjector.register<SecurityService>(() => SecurityServiceImp());

    dependencyInjector.register<LoginApi>(() => LoginApi(dependencyInjector.get()));

    dependencyInjector.register<GenericService<HomeModel>>(() => HomeService());
    dependencyInjector.register<HomeApi>(() => HomeApi((dependencyInjector.get())));


    
    

    
    return dependencyInjector;
  }

}