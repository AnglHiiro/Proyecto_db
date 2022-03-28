import 'package:flutter/material.dart';
import 'package:restaurant/values.dart';

class OrderDetails extends StatefulWidget {
  OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

enum tipoPedido { 
  restaurant, 
  delivery

}

class _OrderDetailsState extends State<OrderDetails> {
  tipoPedido? _typeOrder = tipoPedido.restaurant;
  Map<String, bool> values = {
    'Sin Cebolla' : false,
    'Sin Aguacate' : false,
    'Sin Tomate' : false,
    'Sin Cilantro' : false,
  };
  @override
  Widget build(BuildContext context) {
  final bool checkboxState;
  final Function(bool?) toggleCheckboxState;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.grey.shade400,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Platillo',
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 25,
              color: Colors.black54,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 15),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, top: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 115,
                        child: Image.network(
                          'https://cdn.kiwilimon.com/recetaimagen/29699/th5-640x640-31115.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              'Coctel de Camarones',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: blackLight,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            margin: EdgeInsets.only(bottom: 15),
                            child: Text(
                              'Preparación a base de camarones generalmente crudos, aliñados o macerados en una mezcla de aceite de oliva o maíz, puré de jitomate o salsa catsup, cebolla picada y cilantro.',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: blackLight,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 3,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1,
                      right: MediaQuery.of(context).size.width * 0.1,
                      top: 15),
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio<tipoPedido>(
                            value: tipoPedido.restaurant,
                            groupValue: _typeOrder,
                            onChanged: (tipoPedido? value) {
                              setState(() {
                                _typeOrder = value;
                              });
                            },
                          ),
                          Text(
                            'Restaurante',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              color: blackLight,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Radio<tipoPedido>(
                            value: tipoPedido.delivery,
                            groupValue: _typeOrder,
                            onChanged: (tipoPedido? value) {
                              setState(() {
                                _typeOrder = value;
                              });
                            },
                          ),
                          Text(
                            'Para Llevar',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              color: blackLight,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
