import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:zubair_project/models/model.dart';
import 'package:zubair_project/widgets/drawer.dart';
import 'package:zubair_project/widgets/item_widget.dart';
<<<<<<< HEAD
import 'package:velocity_x/velocity_x.dart';
import 'package:zubair_project/widgets/theme.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(
      () {},
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Container(
              padding: Vx.m32,
              child: Column(
                children: [
                  CatalogHeader(),
                  if (CatalogModel.items != null &&
                      CatalogModel.items.isNotEmpty)
                    CatalogList().expand()
                  else
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                ],
              )),
        ));
  }
}

class CatalogHeader extends StatelessWidget {
=======

class Homepage extends StatefulWidget {
>>>>>>> f6eb99edced2559dfbc148da16feacd5b205221e
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(
      () {},
    );
  }

  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Column(
      children: [
        "Catalog App".text.bold.xl5.color(MyTheme.darkblue).make(),
        "Find your Products!".text.xl3.make()
      ],
=======
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    final item = CatalogModel.items[index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                          child: Text(
                            item.name,
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                        ),
                        child: Image.network(item.image),
                        footer: Container(
                          child: Text(
                            item.price.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: CatalogModel.items.length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: MyDrawer(),
>>>>>>> f6eb99edced2559dfbc148da16feacd5b205221e
    );
  }
}

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return CatalogItem(catalog: catalog);
        });
  }
}

class CatalogItem extends StatelessWidget {
  @override
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(
          image: catalog.image,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(MyTheme.darkblue).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.make(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color.fromARGB(192, 17, 2, 86),
                        foregroundColor: Color.fromARGB(237, 241, 242, 243)),
                    onPressed: () {},
                    child: "Buy".text.bold.make())
              ],
            )
          ],
        ))
      ],
    )).white.rounded.square(130).make().py16();
  }
}

class CatalogImage extends StatelessWidget {
  @override
  final String image;

  const CatalogImage({super.key, required this.image});
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);
  }
}
