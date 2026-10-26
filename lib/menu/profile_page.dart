import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/balanceBox.dart';
import 'package:flutter_application_2/components/menuTile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Profil Saya", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
        
          Row(
            children: [
              const Icon(Icons.account_circle, size: 60, color: Colors.blue),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  "Admin Testing",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  side: const BorderSide(color: Colors.blue),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                child: const Text("Edit"),
              ),
            ],
          ),
          
          const SizedBox(height: 24),

         
          const Row(
            children: [
              Expanded(
                child: BalanceBox(
                  icon: Icons.account_balance_wallet,
                  title: "SaldoPay",
                  value: "Rp 150.000",
                ),
              ),
            ],
          ),

          const SizedBox(height: 32),

         
          const Text("Pengaturan Akun", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          
          MenuTile(
            icon: Icons.location_on,
            title: "Alamat Pengiriman",
            onTap: () {},
          ),
          const Divider(height: 1, color: Colors.black12),
          
          MenuTile(
            icon: Icons.receipt_long,
            title: "Riwayat Pesanan",
            onTap: () {},
          ),
          const Divider(height: 1, color: Colors.black12),
          
          MenuTile(
            icon: Icons.local_offer,
            title: "Promo & Voucher",
            onTap: () {},
          ),
          const Divider(height: 1, color: Colors.black12),
          
          MenuTile(
            icon: Icons.favorite,
            title: "Makanan Favorit",
            onTap: () {},
          ),

          const SizedBox(height: 24),

        
          const Text("Umum", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),

          MenuTile(
            icon: Icons.help_outline,
            title: "Pusat Bantuan",
            onTap: () {},
          ),
          const Divider(height: 1, color: Colors.black12),
          
          MenuTile(
            icon: Icons.language,
            title: "Bahasa",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
