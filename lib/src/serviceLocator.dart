import 'package:get_it/get_it.dart';
import 'package:state_mgmt_example/src/models/appModel.dart';

GetIt getIt = new GetIt();

void setup(){
  getIt.registerSingleton<AppModel>(AppModelImplementation());
}