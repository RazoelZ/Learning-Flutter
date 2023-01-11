import 'package:belajar_flutter_22/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreatePage extends StatefulWidget {
  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  DateTime? _selectedDate;
  TextEditingController _date = new TextEditingController();

  Service? selectedService;

  List<Service> Services = [
    Service("Cuci Biasa"),
    Service("Cuci Semir"),
    Service("Cuci Kilat"),
  ];

  List<DropdownMenuItem> generateItems(List<Service> persons) {
    List<DropdownMenuItem> items = [];
    for (var item in persons) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 129, 201, 1),
        title: const Text('Create Page'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
              alignment: Alignment.centerLeft,
              child: Text(
                "Masukkan Data Anda",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Masukan Nama Anda',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.add_card_rounded),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Masukan Nomer Plat Anda',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.car_crash_outlined),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Jenis Kendaraan',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton(
              hint: Text("Silahkan Pilih jenis layanan"),
              isExpanded: true,
              value: selectedService,
              items: generateItems(Services),
              onChanged: (items) {
                setState(() {
                  selectedService = items;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              onTap: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: _selectedDate ?? DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                );
                if (selectedDate != null) {
                  setState(() {
                    _selectedDate = selectedDate;
                  });
                }
              },
              controller: _selectedDate == null
                  ? _date
                  : TextEditingController(
                      text: _selectedDate!.toLocal().toString().split(' ')[0]),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.calendar_today),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Tanggal Pesan',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ViewPage();
                }));
              },
              child: Text('Submit'),
            ),
          )
        ]),
      ),
    );
  }
}

class Service {
  String name;
  Service(this.name);
}
