import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectionStatusCubit extends Cubit<ConnectionStatus>{

  late StreamSubscription _connectionSubscription;
  
}