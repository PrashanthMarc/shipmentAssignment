import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ShipmentAppUI(),
    );
  }
}

class ShipmentAppUI extends StatefulWidget {
  @override
  _ShipmentAppUIState createState() => _ShipmentAppUIState();
}

class _ShipmentAppUIState extends State<ShipmentAppUI> {
  TextEditingController _shipmentController;
  TextEditingController _locationController;
  TextEditingController _bolController;
  String serviceDropdownValue = "DHL";
  String transitDropdownValue = "Select One";
  String pickupRequestedDropdownValue = "Select Date";
  String pickupActualDropdownValue = "Select Date";
  bool isChecked1 = true;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Icon(Icons.shopping_cart, color: Colors.green),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 4.0, right: 4.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/cm8.jpeg"),
              radius: 20.0,
            ),
          ),
          Icon(Icons.arrow_drop_down),
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(12.0),
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Create Shipment",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    "Step 1 of 6 - Shipment",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _stepListItems(
                          stepCount: "1",
                          containerColor: Colors.black,
                          textColor: Colors.white,
                          borderColor: Colors.black),
                      Expanded(
                          child: Container(height: 2.0, color: Colors.grey)),
                      _stepListItems(stepCount: "2"),
                      Expanded(
                          child: Container(height: 2.0, color: Colors.grey)),
                      _stepListItems(stepCount: "3"),
                      Expanded(
                          child: Container(height: 2.0, color: Colors.grey)),
                      _stepListItems(stepCount: "4"),
                      Expanded(
                          child: Container(height: 2.0, color: Colors.grey)),
                      _stepListItems(stepCount: "5"),
                      Expanded(
                          child: Container(height: 2.0, color: Colors.grey)),
                      _stepListItems(stepCount: "6"),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Center(
                      child: Text(
                    "* indicates mandatory fields",
                  )),
                  SizedBox(height: 12.0),
                  Stack(children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          OutlineButton(
                              onPressed: () {},
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 17.0),
                                  child: Text("Shipper")),
                              borderSide: BorderSide(color: Colors.grey)),
                          Expanded(
                              child: Container(
                                  height: 50.0,
                                  child: TextField(
                                      controller: _shipmentController,
                                      decoration: InputDecoration(
                                          hintText: "Company Name",
                                          hintStyle: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.grey,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              borderSide: BorderSide(
                                                  color: Colors.grey))))))
                        ]),
                    Positioned(
                        top: 8.0,
                        right: 12.0,
                        child: Text("*", style: TextStyle(color: Colors.red))),
                  ]),
                  Stack(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          OutlineButton(
                              onPressed: () {},
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 17.0),
                                  child: Text("Location")),
                              borderSide: BorderSide(color: Colors.grey)),
                          Expanded(
                              child: Container(
                                  height: 50.0,
                                  child: TextField(
                                      controller: _locationController,
                                      decoration: InputDecoration(
                                          hintText: "Address",
                                          hintStyle: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.grey,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              borderSide: BorderSide(
                                                  color: Colors.grey))))))
                        ],
                      ),
                      Positioned(
                          top: 8.0,
                          right: 12.0,
                          child: Text("*", style: TextStyle(color: Colors.red)))
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        OutlineButton(
                            onPressed: () {},
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text("BOL#")),
                            borderSide: BorderSide(color: Colors.grey)),
                        Expanded(
                            child: Container(
                                height: 50.0,
                                child: TextField(
                                    controller: _bolController,
                                    decoration: InputDecoration(
                                        hintText: "Optional",
                                        hintStyle: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.grey,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            borderSide: BorderSide(
                                                color: Colors.grey))))))
                      ]),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Service Mode"),
                            SizedBox(height: 4.0),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              height: MediaQuery.of(context).size.height * 0.06,
                              color: Colors.grey,
                              child: DropdownButton<String>(
                                isExpanded: true,
                                underline: Container(),
                                value: serviceDropdownValue,
                                onChanged: (String newValue) {
                                  setState(() {
                                    serviceDropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'DHL',
                                  'Blue Dart',
                                  'Couriers'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 40.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Transit Service"),
                            SizedBox(height: 4.0),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              height: MediaQuery.of(context).size.height * 0.06,
                              color: Colors.grey,
                              child: DropdownButton<String>(
                                isExpanded: true,
                                underline: Container(),
                                value: transitDropdownValue,
                                onChanged: (String newValue) {
                                  setState(() {
                                    transitDropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'Select One',
                                  'Select Two'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Text("Pickup Services"),
                  CheckWidget(
                      isChecked: isChecked1,
                      onChecked: (value1) {
                        setState(() {
                          isChecked1 = value1;
                        });
                      },
                      title: "Construction Site"),
                  CheckWidget(
                      isChecked: isChecked2,
                      onChecked: (value2) {
                        setState(() {
                          isChecked2 = value2;
                        });
                      },
                      title: "Courier Service"),
                  CheckWidget(
                      isChecked: isChecked3,
                      onChecked: (value3) {
                        setState(() {
                          isChecked3 = value3;
                        });
                      },
                      title: "Drayage Service"),
                  CheckWidget(
                      isChecked: isChecked4,
                      onChecked: (value4) {
                        setState(() {
                          isChecked4 = value4;
                        });
                      },
                      title: "Dropped Trailer"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Date Pickup Requested"),
                            SizedBox(height: 4.0),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              height: MediaQuery.of(context).size.height * 0.06,
                              color: Colors.grey,
                              child: DropdownButton<String>(
                                isExpanded: true,
                                underline: Container(),
                                value: pickupRequestedDropdownValue,
                                onChanged: (String newValue) {
                                  setState(() {
                                    pickupRequestedDropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'Select Date',
                                  'Blue Dart',
                                  'Couriers'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 40.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Actual Pickup Date"),
                            SizedBox(height: 4.0),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              height: MediaQuery.of(context).size.height * 0.06,
                              color: Colors.grey,
                              child: DropdownButton<String>(
                                isExpanded: true,
                                underline: Container(),
                                value: pickupActualDropdownValue,
                                onChanged: (String newValue) {
                                  setState(() {
                                    pickupActualDropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'Select Date',
                                  'Select Two'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "BACK",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      RaisedButton(
                        color: Color(0xff44464d),
                        onPressed: () {},
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckWidget extends StatelessWidget {
  const CheckWidget({
    Key key,
    @required this.isChecked,
    @required this.onChecked,
    @required this.title,
  }) : super(key: key);

  final Function(bool) onChecked;

  final bool isChecked;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            this.onChecked(value);
          },
        ),
        Text(title)
      ],
    );
  }
}

_stepListItems({
  String stepCount,
  Color containerColor = Colors.white,
  Color borderColor = Colors.grey,
  Color textColor = Colors.grey,
}) {
  return Container(
    padding: EdgeInsets.all(10.0),
    child: Text(
      stepCount,
      style: TextStyle(color: textColor),
    ),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: containerColor,
        border: Border.all(color: borderColor, width: 2.0)),
  );
}
