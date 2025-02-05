import 'package:flutter/material.dart';

class SliversPage extends StatelessWidget {
  const SliversPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver AppBar'),
              background: Image.network(
                'https://picsum.photos/seed/picsum/200/300',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text(
                  'Item $index',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              childCount: 20,
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                color: Colors.blue[100 * (index % 9)],
                height: 100.0,
                alignment: Alignment.center,
                child: Text('Grid #$index'),
              ),
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
