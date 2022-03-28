import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/views/orderdetails.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PedidosOrder extends StatefulWidget {
  final int numTable;
  const PedidosOrder({
    Key? key,
    required this.numTable
  }) : super(key: key);

  @override
  State<PedidosOrder> createState() => _PedidosOrderState();
}

class _PedidosOrderState extends State<PedidosOrder> {
  CollectionReference  platillos = FirebaseFirestore.instance.collection('platillos');
  @override
  Widget build(BuildContext context) {
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
          title: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderDetails(),
                ),
              );
            },
            child: Text(
              "Mesa #" + widget.numTable.toString(),
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 25,
                color: Colors.black54,
              ),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: 
          FutureBuilder<DocumentSnapshot>(
            future: platillos.doc('0').get(),
            builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

              if (snapshot.hasError) {
                return Text("Something went wrong");
              }

              if (snapshot.hasData && !snapshot.data!.exists) {
                return Text("Document does not exist");
              }

              if (snapshot.connectionState == ConnectionState.done) {
                Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;

              return Text("ID: ${data['id']} \nNombre: ${data['name']} \nDescripcion: ${data['description']} \nImagen: ${data['imageUrl']} \nPrecio: ${data['price']} \nCategoria: ${data['category']}");
                
            }

            return Text("loading");
            },
          ),
        ),
      ),
    );
  }
}
