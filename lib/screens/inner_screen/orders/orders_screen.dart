import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:alisveris_app/models/order_model.dart';
import 'package:alisveris_app/providers/order_provider.dart';
import '../../../../widgets/empty_bag.dart';
import '../../../services/assets_manager.dart';
import '../../../widgets/title_text.dart';
import 'orders_widget.dart';

class OrdersScreenFree extends StatefulWidget {
  static const routeName = '/OrderScreen';

  const OrdersScreenFree({Key? key}) : super(key: key);

  @override
  State<OrdersScreenFree> createState() => _OrdersScreenFreeState();
}

class _OrdersScreenFreeState extends State<OrdersScreenFree> {
  @override
  Widget build(BuildContext context) {
    final ordersProvider = Provider.of<OrderProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const TitlesTextWidget(
            label: 'Siparişlerim',
          ),
        ),
        body: FutureBuilder<List<OrdersModelAdvanced>>(
            future: ordersProvider.fetchOrder(),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: SelectableText(snapshot.error.toString()),
                );
              } else if (!snapshot.hasData) {
                return EmptyBagWidget(
                    imagePath: AssetsManager.orderBag,
                    title: "Sipariş verilen ürün bulunmamakta",
                    subtitle: '',
                    buttonText: 'Alışveriş yap');
              }
              return ListView.separated(
                itemCount: snapshot.data!.length,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
                    child: OrdersWidgetFree(ordersModelAdvanced: ordersProvider.getOrders[index]),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                      // thickness: 8,
                      // color: Colors.red,
                      );
                },
              );
            })));
  }
}
