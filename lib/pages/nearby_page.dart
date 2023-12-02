import 'package:_3rd_course/components/toolbar.dart';
import 'package:_3rd_course/config/app_icons.dart';
import 'package:_3rd_course/config/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatefulWidget {
  const NearbyPage({super.key});

  @override
  State<NearbyPage> createState() => _NearbyPageState();
}

class _NearbyPageState extends State<NearbyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.nearby),
      body: FlutterMap(
        options: MapOptions(
            initialCenter: LatLng(31.945759, 35.975072), initialZoom: 10),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.ces.flutter',
            // Plenty of other options available!
          ),
          MarkerLayer(
            markers: [
              Marker(
                  width: 100,
                  height: 50,
                  point: LatLng(31.945759, 35.975072),
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: Text(
                          "Username",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SvgPicture.asset(
                        AppIcons.icLocation,
                        colorFilter:
                            ColorFilter.mode(Colors.black, BlendMode.srcIn),
                      )
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
