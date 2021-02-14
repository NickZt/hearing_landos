import 'package:hearing_landos/utils/ISimpleDisposable.dart';
import 'package:rxdart/subjects.dart';
// rx drt approach to inject state
mixin StateProvider implements IDisposable {
  static const NONE_STATE = "None";

  final _stateController = BehaviorSubject<String>();
  Stream<String> get stateOut => _stateController.stream;

  String get currentState => _stateController.value;

  void setState(String state) {
    _stateController.sink.add(state);
  }

  @override
  void dispose() {
    _stateController.close();
  }
}