import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_taxi/main.dart';
import 'package:tele_taxi/src/utils/check_internet_connection.dart';

class ConnectionStatusCubit extends Cubit<ConnectionStatus>{

  late StreamSubscription _connectionSubscription;

  ConnectionStatusCubit() : super(ConnectionStatus.online){
    _connectionSubscription = internetChecker.internetStatus().listen(emit);
  }

  @override 
  Future<void>close(){
    _connectionSubscription.cancel();
    return super.close();
  }
}