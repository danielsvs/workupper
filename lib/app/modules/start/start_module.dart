import 'package:workupper/app/modules/signup/signup_module.dart';
import 'package:workupper/app/modules/start/start_controller.dart';
import 'package:workupper/app/modules/start/start_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StartModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => StartController()),
      ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => StartPage()),
    Router('/signup', module: SignupModule()),
  ];

  static Inject get to => Inject<StartModule>.of();
}
