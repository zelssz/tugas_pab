import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String address = '';

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartModel>();

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Total: Rp ${cart.totalPrice}',
                style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 20),

            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Name'),
                    validator: (value) =>
                        value!.isEmpty ? 'Enter name' : null,
                    onSaved: (value) => name = value!,
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Address'),
                    validator: (value) =>
                        value!.isEmpty ? 'Enter address' : null,
                    onSaved: (value) => address = value!,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        cart.clear();

                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                          const SnackBar(
                              content:
                                  Text('Order placed successfully!')),
                        );

                        Navigator.pop(context);
                      }
                    },
                    child: const Text('Place Order'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}