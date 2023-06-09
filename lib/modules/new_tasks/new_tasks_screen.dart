import 'package:todo_app/shared/componentes/components.dart';
import 'package:todo_app/shared/shared.cubit/cubit.dart';
import 'package:todo_app/shared/shared.cubit/states.dart';
import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class NewTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state){
        var tasks = AppCubit.get(context).newTasks;

        return taskBuilder(
           tasks,
        );
      },
    );
  }
}
