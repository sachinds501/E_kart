// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_constructors

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';

// Adapted from the data table demo in offical flutter gallery:
// https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/data_table_demo.dart
class BillPage extends StatefulWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  _BillPageState createState() => _BillPageState();
}

double revenue = 0;
int flag = 0;

class _BillPageState extends State<BillPage> {
  // GlobalKey is needed to show bottom sheet.
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 29),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bluetooth :",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                      TextButton(
                        onPressed: () {
                          AppSettings.openBluetoothSettings();
                        },
                        child: Text("connect",
                            style: TextStyle(
                                backgroundColor: Colors.grey[300],
                                color: Colors.green,
                                fontWeight: FontWeight.w800,
                                fontSize: 15)),
                      ),
                      TextButton(
                        onPressed: () {
                          flag = 1;
                        },
                        child: Text("disconnect",
                            style: TextStyle(
                                backgroundColor: Colors.grey[300],
                                color: Colors.red,
                                fontWeight: FontWeight.w800,
                                fontSize: 15)),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: "Barcode machine status : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        TextSpan(
                            text: 'connected',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 15)),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: "Barcode machine ID : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        TextSpan(
                            text: '314',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 15)),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: "Barcode machine status : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        TextSpan(
                            text: 'connected',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                fontSize: 15)),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: "Barcode machine ID : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        TextSpan(
                            text: '314',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            PaginatedDataTable(
              showCheckboxColumn: false,
              header: Row(children: [
                const Text(
                  'Product Details :',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => _scaffoldKey.currentState
                        ?.showBottomSheet((ctx) => _buildBottomSheet(ctx)),
                    child: const Text(
                      'checkout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ]),
              rowsPerPage: _rowsPerPage,
              availableRowsPerPage: const <int>[5, 10, 15, 20],
              onRowsPerPageChanged: (int? value) {
                if (value != null) {
                  setState(() => _rowsPerPage = value);
                }
              },
              columns: kTableColumns,
              source: ProductDataSource(),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildBottomSheet(BuildContext context) {
    return Container(
      height: 235,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 255, 255, 255), width: 0.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.cyan[700],
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 118.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Image.asset(
                            'assets/images/gradient.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 16.0,
                          left: 26.0,
                          right: 16.0,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Total Bill Amount : \u{20B9}${9484.87}',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Pay Bill',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

////// Columns in table.
const kTableColumns = <DataColumn>[
  DataColumn(
    label: Text('Items inside cart'),
  ),
  DataColumn(
    label: Text('Quantity'),
    tooltip: 'Total number of corresponding units',
    numeric: true,
  ),
  DataColumn(
    label: Text('Category'),
  ),
  DataColumn(
    label: Text('Unit Price (Rs)'),
    tooltip: "Price of a product per unit",
    numeric: true,
  ),
  DataColumn(
    label: Text('Discount (%)'),
    numeric: true,
  ),
  DataColumn(
    label: Text('Discount Amount (Rs.)'),
    numeric: true,
  ),
  DataColumn(
    label: Text('Final Amount (Rs.)'),
    tooltip:
        'The amount of calcium as a percentage of the recommended daily amount.',
    numeric: true,
  ),
];

////// Data class.
class Product {
  Product(this.item_name, this.quantity, this.category, this.unit_price,
      this.discount, this.discount_amount, this.final_amount);
  final String item_name;
  final int quantity;
  final String category;
  final double unit_price;
  final double discount;
  final double discount_amount;
  final double final_amount;
  final double revenue = 0;
  bool selected = false;
}

////// Data source class for obtaining row data for PaginatedDataTable.
class ProductDataSource extends DataTableSource {
  int _selectedCount = 0;
  final List<Product> _products = <Product>[
    Product('Cinthol soap', 4, "Bathing", 25.0, 2.0, 0, 14),
    Product('Dove soap', 2, "Bathing", 35, 3, 129, 8),
    Product('Colgate ToothBrush', 4, "Bathing", 15, 0, 337, 6),
    Product('Colgate Max Fresh', 1, "Bathing", 60, 5, 413, 3),
    Product('Peter England Shirt', 1, "Fashion", 1500, 15, 327, 7),
    Product('Masala Lays Waffers', 3, "Food", 10, 1, 50, 0),
    Product('Choclate Oreo', 1, "Food", 30, 0.0, 38, 0),
    Product('Tikha Mitha Mix', 1, "Food", 40, 1, 562, 0),
    Product('Classmate Notebook', 6, "Education", 55, 5, 326, 2),
    Product('Kitkat Box', 1, "Food", 200, 4, 54, 12),
    Product('Prestige Electric Stove', 1, "Kitcen", 2699, 5.0, 87, 14),
    Product('Ice cream ', 1, "Food", 20, 0, 129, 8),
    Product('Utensils', 2, "Kitcen", 70, 8.0, 337, 6),
    Product('Cup Plate set', 2, "Kitcen", 149, 10, 413, 3),
    Product('C-type Onceplus Charger', 1, "Electronics", 599, 20, 327, 7),
    Product('Lucifer Belt', 1, "Fashion", 199, 30.0, 50, 0),
    Product('Nike Sports Shoes', 1, "Fashion", 1999, 20.0, 38, 0),
    Product('Amul Ghee', 1, "Food", 79, 0.0, 38, 0),
    Product('Oneplus Bullets Z', 1, "Accessories", 1800, 5.0, 38, 0),
    Product('Dawat Basmati', 1, "Food", 299, 2.0, 38, 0),
    Product('Borbon biscuits', 2, "Food", 20, 0.0, 38, 0),
  ];

  // double revenue = 0;
  @override
  DataRow? getRow(int index) {
    assert(index >= 0);
    if (index >= _products.length) return null;
    final Product product = _products[index];
    return DataRow.byIndex(
      index: index,
      selected: product.selected,
      onSelectChanged: (bool? value) {
        revenue += product.final_amount;
        if (value == null) return;
        if (product.selected != value) {
          _selectedCount += value ? 1 : -1;
          assert(_selectedCount >= 0);
          product.selected = value;
          notifyListeners();
        }
      },
      cells: <DataCell>[
        DataCell(Text(product.item_name)),
        DataCell(Text('${product.quantity}')),
        DataCell(Text(product.category)),
        DataCell(Text(product.unit_price.toStringAsFixed(2))),
        DataCell(Text(product.discount.toStringAsFixed(1))),
        DataCell(Text(
            (product.discount * product.unit_price / 100).toStringAsFixed(2))),
        DataCell(Text((product.quantity *
                (product.unit_price -
                    (product.discount * product.unit_price / 100)))
            .toStringAsFixed(2))),
      ],
    );
  }

  @override
  int get rowCount => _products.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}
