import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HomePageUser extends StatelessWidget {
  //data dummy yang akan ditampilkan
  final List<Sales> data = [
    //kita masukan data ke dalam model
    Sales(month: "Jan", products: 1000000),
    Sales(month: "Feb", products: 1200000),
    Sales(month: "Mar", products: 1500000),
    Sales(month: "Apr", products: 1600000),
    Sales(month: "Mei", products: 1600000),
    Sales(month: "Jun", products: 1200000),
    Sales(month: "Jul", products: 1300000),
    Sales(month: "Agu", products: 2300000),
    Sales(month: "Sept", products: 2200000),
    Sales(month: "Okt", products: 2100000),
    Sales(month: "Nov", products: 1900000),
    Sales(month: "Des", products: 0),
  ];

  @override
  Widget build(BuildContext context) {
    //setting diagram
    List<charts.Series<Sales, String>> series = [
      //charts.series memiliki 4 parameter wajib diisi
      //domainFn adalah wilayah/label/kelompok
      //measureFn adalah ukuran/nilai yang akan dibandingkan
      charts.Series(
        id: "Products",
        data: data,
        domainFn: (Sales series, _) => series.month,
        measureFn: (Sales series, _) => series.products,
      )
    ];

    return SafeArea(
      child: Center(
        child: Container(
          height: 400,
          padding: EdgeInsets.all(20),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Statisktik Pendapatan Tahun 2022",
                  ),
                  Expanded(
                    //menampilkan chart
                    //tambahkan vertical: false jika ingin membuat chart horizontal
                    child: charts.BarChart(series, animate: true),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//membuat model
class Sales {
  final String month;
  final int products;

  Sales({
    required this.month,
    required this.products,
  });
}
