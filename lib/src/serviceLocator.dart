import 'package:get_it/get_it.dart';
import 'package:state_mgmt_example/src/models/appModel.dart';
import 'package:state_mgmt_example/src/models/appModelStreams.dart';

GetIt getIt = new GetIt();

void setup(){
  getIt.registerSingleton<AppModel>(AppModelImplementation());
  getIt.registerSingleton<AppModelStreams>(AppModelStreamsImplementation());
}