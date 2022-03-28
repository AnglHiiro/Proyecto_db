import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant/values.dart';
import 'package:restaurant/views/pedidos_order.dart';
import 'package:restaurant/widgets/utility/navbar.dart';

class Pedidos extends StatefulWidget {
  final int numTable;
  Pedidos({
    Key? key,
    required this.numTable
  }) : super(key: key);

  @override
  State<Pedidos> createState() => _PedidosState();
}

class _PedidosState extends State<Pedidos> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey.shade50,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.11),
            child: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_sharp,
                  color: Colors.grey.shade400,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor: Colors.white,
              bottom: TabBar(
                unselectedLabelColor: Colors.grey.shade400,
                labelStyle: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                labelColor: orangeHibiscus,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: orangeHibiscus,
                    width: 3
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 20)
                ),
                tabs: const [
                  Tab(text: 'COMPLETADOS'),
                  Tab(text: 'PENDIENTES'),
                ],
              ),
              title: Text("Mesa #" + widget.numTable.toString(),
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.black54,
                ),
              ),
              centerTitle: true,
            ),
          ),
          body: TabBarView(
            children: const [
              PedidosCompletados(),
              PedidosPendientes(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => PedidosOrder(numTable: widget.numTable),
                )
              );
            },
            child: Icon(Icons.add),
            backgroundColor: reptileGreen,
          ),
          bottomNavigationBar: NavMenuBar(idx: 2),
        ),
      ),
    );
  }
}
 
class PedidosCompletados extends StatelessWidget {
  const PedidosCompletados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
              child: 
              Text('Pedidos Completados', 
                style: TextStyle(fontSize: 21),)
              )
            )
          );
  }
}
 
class PedidosPendientes extends StatelessWidget {
  const PedidosPendientes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
              child: 
              Text('Pedidos Pendientes',
                style: TextStyle(fontSize: 21),)
              )
            )
          );
  }
}