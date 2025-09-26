import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Abcd extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      routes:
      {
        'loading': (_) => LoadingListPage(),


      },
      theme: ThemeData(
        primarySwatch: Colors.green, // Set the app's primary theme color
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shimmer'),
        ),
        body: Center(
          child: ShimmerEx(),
        ),
      ),
    );
  }

}


class ShimmerEx extends StatefulWidget
{
  const ShimmerEx({super.key});

  @override
  State<ShimmerEx> createState() => _ShimmerExState();
}

class _ShimmerExState extends State<ShimmerEx> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shimmer'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Loading List'),
            onTap: () => Navigator.of(context).pushNamed('loading'),
          ),
        ],
      ),
    );

  }
}

class LoadingListPage extends StatefulWidget
{
  const LoadingListPage({super.key});

  @override
  State<LoadingListPage> createState() => _LoadingListPageState();
}

class _LoadingListPageState extends State<LoadingListPage>
{

  @override
  Widget build(BuildContext context)
  {
    bool _enabled = true;

    return Scaffold(

        appBar: AppBar
          (
          title: const Text('Loading List'),
        ),

        body: Container
          (
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.black,
                  enabled: _enabled,
                  child: ListView.builder(
                    itemBuilder: (_, __) =>
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 48.0,
                                height: 48.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: double.infinity,
                                      height: 8.0,
                                      color: Colors.white,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 2.0),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 8.0,
                                      color: Colors.white,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 2.0),
                                    ),
                                    Container(
                                      width: 40.0,
                                      height: 8.0,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                    itemCount: 6,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _enabled = !_enabled;
                      });
                    },
                    child: Text(
                      _enabled ? 'Stop' : 'Play',
                      style: Theme
                          .of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(
                          fontSize: 18.0,
                          color: _enabled ? Colors.redAccent : Colors.green),
                    )),
              )
            ],
          ),
        ),
      );
    }
  }

