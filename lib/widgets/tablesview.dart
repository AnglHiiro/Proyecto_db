import 'package:flutter/material.dart';
import 'package:restaurant/values.dart';
import 'package:restaurant/views/pedidos.dart';

class TablesView extends StatefulWidget {
  final int numTable;
  const TablesView({
    Key? key,
    required this.numTable,
  }) : super(key: key);

  @override
  State<TablesView> createState() => _TablesViewState();
}

class _TablesViewState extends State<TablesView> {
  int state = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(this.context,
          MaterialPageRoute(
            builder: (context) => Pedidos(
              numTable: widget.numTable,
            ),
          )
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/table.png',
            width: MediaQuery.of(context).size.width * 0.25,
            color: state == 0 ? reptileGreen : orangeHibiscus,
          ),
          Text(widget.numTable.toString(),
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}