import 'package:h/app_DataBase.dart';
import 'package:h/homee/todo.dart/Toodo.dart';

abstract class AppRepository {
  Future<List<Toodo>>getList();
}
class AppRepositoryImpl extends AppRepository{
  final AppDatabase dp;
  AppRepositoryImpl(this.dp);
  @override
  Future<List<Toodo>> getList() =>dp.getList();
 
  
}