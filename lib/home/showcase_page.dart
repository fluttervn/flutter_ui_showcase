import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui_showcase/home/page_data.dart';

class ShowcasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        HeaderItem header = listHeaderAndPage[index];
        return ExpansionTile(
          leading: Icon(header.icon),
          title: Text(
            "${header.title} (${header.pages.length} items)",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          children: _buildHeaderRows(header.pages, context),
        );
      },
      itemCount: listHeaderAndPage.length,
    );
  }

  List<Widget> _buildHeaderRows(List<PageItem> items, BuildContext context) {
    List<Widget> rows = [];
    for (var item in items) {
      rows.add(ListTile(
        leading: Icon(Icons.label_outline, color: Colors.black),
        contentPadding: EdgeInsets.all(0),
        dense: false,
        isThreeLine: false,
        title: Text(
          item.title,
          style:
              Theme.of(context).textTheme.subhead.copyWith(color: Colors.black),
        ),
        onTap: () => _openPage(context, item),
      ));
    }

    return rows;
  }

  void _openPage(BuildContext context, PageItem item) {
    print('_openPage: ${item.title} => ${item.page}');

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => item.page,
      ),
    );
  }
}
