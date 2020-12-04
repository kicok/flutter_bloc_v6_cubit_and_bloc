import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_v6_cubit_and_bloc/counter_cubit.dart';

class CounterCubitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final coubtCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit'),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, counter) {
          return Center(
            child: Text(
              '$counter',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // FloatingActionButton을 복수개로 쓸때 에러가 있을때 heroTag 코드의 주석을 풀면됨.
            heroTag: null,
            child: Icon(Icons.add),
            onPressed: () {
              coubtCubit.increment();
            },
          ),
          SizedBox(width: 20.0),
          FloatingActionButton(
            heroTag: null,
            child: Icon(Icons.remove),
            onPressed: () {
              coubtCubit.decrement();
            },
          )
        ],
      ),
    );
  }
}
