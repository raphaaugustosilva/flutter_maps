import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class PrincipalView extends StatefulWidget {
  @override
  _PrincipalViewState createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  // Declare outside build method
  GoogleMapController mapController;

  @override void initState() {
    //Map<PermissionGroup, PermissionStatus> permissions = await PermissionHandler().requestPermissions([PermissionGroup.contacts]);
    PermissionHandler().requestPermissions([PermissionGroup.location]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              initialCameraPosition: CameraPosition(
                target: LatLng(37.4219999, -122.0862462),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        mapController.animateCamera(
          // CameraUpdate.newCameraPosition(
          //   CameraPosition(target: LatLng(37.4219999, -122.0862462), zoom: 20.0),
          // ),
          CameraUpdate.newLatLngBounds(
            LatLngBounds(
              southwest: LatLng(48.8589507, 2.2770205),
              northeast: LatLng(50.8550625, 4.3053506),
            ),
            32.0,
          ),
        );
      }),
    );
  }
}
