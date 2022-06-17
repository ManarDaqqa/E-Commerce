import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../components/coustom_bottom_nav_bar.dart';
import '../../constants.dart';
import '../../enum.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
      Completer<GoogleMapController> _controller = Completer();
      static final CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(31.332852, 34.334425),
      zoom: 12);

      List<Marker> _marker = [];
      List<Marker> _list = const [
        Marker(
        markerId: MarkerId('1'),
        position: LatLng(31.332852, 34.334425),
        infoWindow: InfoWindow(title: 'AbuDaqqa Stor')
        ),
      ];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        markers: Set<Marker>.of(_marker),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () async {
          GoogleMapController controller = await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(
                target: LatLng(31.333005133950493, 34.334457692471624),
                zoom: 16
            )
          ));
          setState((){

          });
        },
        child: const Icon(Icons.my_location),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.location),

    );
  }
}


