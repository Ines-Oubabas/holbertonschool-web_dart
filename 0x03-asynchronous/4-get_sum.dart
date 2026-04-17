import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final user = jsonDecode(userData);
    final userId = user['id'];

    final ordersData = await fetchUserOrders(userId);
    final orders = jsonDecode(ordersData);

    num total = 0;
    for (final product in orders) {
      final priceData = await fetchProductPrice(product);
      final price = jsonDecode(priceData);
      total += price;
    }

    return total;
  } catch (err) {
    return -1;
  }
}