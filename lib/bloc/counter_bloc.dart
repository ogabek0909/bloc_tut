import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<Increment>(_onIncrement);
    on<Decrement>(_onDecrement);
    on<Restart>(_onRestart);
  }

  void _onIncrement(Increment event, Emitter<CounterState> emit) {
    emit(CounterState(counter: state.counter + 1));
  }

  void _onDecrement(Decrement event, Emitter<CounterState> emit){
    emit(CounterState(counter: state.counter-1));
  }

  void _onRestart(Restart event, Emitter<CounterState> emit){
    emit(CounterInitial());
  }
}
