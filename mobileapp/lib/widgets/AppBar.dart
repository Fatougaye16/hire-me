import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0, 
            title: const Text(
              'Hire ME',
              style: TextStyle(color: Colors.white), 
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.account_circle, size: 30, color: Colors.white),
                onPressed: () {},
              ),
              PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == 'Settings') {
                  } else if (value == 'Logout') {
                    print('User logged out');
                  }
                },
                icon: const Icon(Icons.menu, color: Colors.white),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'Notifications',
                    child: Text('Notifications'),
                    
                  ),
                  const PopupMenuItem(
                    value: 'Settings',
                    child: Text('Settings'),
                  ),
                  const PopupMenuItem(
                    value: 'Logout',
                    child: Text('Logout'),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search jobs',
                hintStyle: TextStyle(color: Colors.grey[400]),
                filled: true,
                fillColor: Colors.grey[800], 
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + 90);
}
