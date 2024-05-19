import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite_project/bloc/monster_cubit.dart';
import 'package:sqflite_project/bloc/monster_state.dart';
import 'package:sqflite_project/common/configs/locators.dart';
import 'package:sqflite_project/data/model/monster.dart';
import 'package:sqflite_project/data/repositories/monster.repository.implement.dart';
import 'package:sqflite_project/data/service/monster_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MonsterCubit(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'SQLite Data'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    context.read<MonsterCubit>().getMonsters();
    super.initState();
  }

  void createMonster() {
    context.read<MonsterCubit>().insertMonster(
        monster: Monster(
            id: (context.read<MonsterCubit>().state.monsters.length + 1)
                .toString(),
            name: 'Monkey',
            power: 'Fire'),
        tableName: 'monster');
  }

  void deleteMonster(id) {
    context.read<MonsterCubit>().deleteMonster(id: id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Expanded(
              child: BlocBuilder<MonsterCubit, MonsterState>(
                bloc: context.watch<MonsterCubit>(),
                builder: (context, state) {
                  return ListView.separated(
                      itemBuilder: (context, index) {
                        final e = state.monsters[index];
                        return Container(
                          color: Colors.red,
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          height: MediaQuery.sizeOf(context).height * 0.7,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () => deleteMonster(e.id),
                                    child: const Text('Xoa')),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: state.monsters.length);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => createMonster(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
