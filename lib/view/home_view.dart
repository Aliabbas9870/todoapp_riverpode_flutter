import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/riverpod/item_provider.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final item=ref.watch(itemProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: const Text('Todo App riverpod'),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          children: [
            Text('Hello, Riverpod!'),
            item.isEmpty?Text('No item'):Expanded(
              child: ListView.builder(
                itemCount: item.length,
                itemBuilder: (context, index) {
                  // final currentItem = item[index];
                  return Card(
                    margin: EdgeInsets.all(8),
                    elevation: 2,
                    child: ListTile(
                      title: Text(item[index].name),
                      leading: CircleAvatar(child: Text(item[index].id.length.toString())),
                         trailing:  Container(
                          height:100 ,width: 200,
                           child: Row(
                             children: [
                              IconButton(onPressed: (){ref.read(itemProvider.notifier).updateItem(item[index].id, 'new name updated');
                           
                           
                              }, icon: Icon(Icons.edit,color: Colors.blue,)),
                           
                               IconButton(
                                icon: Icon(Icons.delete,color: Colors.red,),
                                onPressed: () {
                                  ref.read(itemProvider.notifier).removeItem(item[index].id);
                                },
                                                   ),
                             ],
                           ),
                         ),)
                  );
                },
              ),
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          ref.read(itemProvider.notifier).addItem('ali abbas');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}