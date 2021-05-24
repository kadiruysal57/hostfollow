import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
var columns = "";
void _getSelectedRowInfo() {
    print('Selected Item Row Name Here...');
  }
 Widget daily_list_tableFunc(listOfData) {
   
    List<DataRow> rows = [];
    listOfData.forEach((element) {
      rows.add(
        DataRow(
          cells: [
            DataCell(
                  Center(
                    child:Text(element['name']),
                  ),
                  onTap: _getSelectedRowInfo,
                ),
                DataCell(
                  Center(
                    child:Text(element['name']),
                  ),
                  onTap: _getSelectedRowInfo,
                ),
                DataCell(
                  Center(
                    child:Text(element['name']),
                  ),
                  onTap: _getSelectedRowInfo,
                ),
                DataCell(
                  Center(
                    child:Text(element['name']),
                  ),
                  onTap: _getSelectedRowInfo,
                ),
                DataCell(
                  Center(
                    child:Text(element['name']),
                  ),
                  onTap: _getSelectedRowInfo,
                ),
          ]
        )
      );
    });

    return  DataTable(
        
        onSelectAll: (b) {},
         sortAscending: true,
         columnSpacing: 25,
          horizontalMargin: 25,
        columns: const <DataColumn>[
          
        DataColumn(
          label:Center(
            child: Text(
              'Test',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ), 
          numeric: false,
          tooltip: "Test",
        ),
        DataColumn(
          label:Center(
            child: Text(
              'Test2',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ), 
          numeric: false,
          tooltip: "Test2",
        ),
        DataColumn(
          label:Center(
            child: Text(
              'Test3',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ), 
          numeric: false,
          tooltip: "Test3",
        ),
        DataColumn(
          label:Center(
            child: Text(
              'Test4',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ), 
          numeric: false,
          tooltip: "Test",
        ),
        DataColumn(
          label:Center(
            child: Text(
              'Test4',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ), 
          numeric: false,
          tooltip: "Test",
        ),
      ],

      rows: rows,

      
    );
  }