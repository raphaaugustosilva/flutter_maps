# flutter_maps

Projeto que implementa Google Maps com Flutter

## Orientações

Artigos:
[https://medium.com/flutter-community/exploring-google-maps-in-flutter-8a86d3783d24](https://medium.com/flutter-community/exploring-google-maps-in-flutter-8a86d3783d24)

Plugin Flutter:
[https://pub.dev/packages/google_maps_flutter](https://pub.dev/packages/google_maps_flutter)


O PASSO A PASSO DEVE VIR SEMPRE DA FONTE OFICIAL DO PLUGIN, mas abaixo segue o que foi preciso fazer na data em que este projeto foi feito.

1) Ativar o Google Maps no Google Cloud. Isto irá gerar uma API Key.
[https://cloud.google.com/maps-platform/](https://cloud.google.com/maps-platform/)


2) Após ter a API Key gerada, adicionar:
ANDROID:
	Adicionar no Android Manifest:



	<manifest ...
		<uses-permission android:name="android.permission.INTERNET"/>
	    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>

	  <application ...
	    <meta-data
            android:name="com.google.android.gms.version"
            android:value="@integer/google_play_services_version" />

	    <meta-data android:name="com.google.android.geo.API_KEY"
	               android:value="YOUR KEY HERE"/>

iOS:
	1) Adicionar no arqivo Runner/AppDelegate.swift

	import UIKit
	import Flutter
	ADICIONAR >>>>> import GoogleMaps

	@UIApplicationMain
	@objc class AppDelegate: FlutterAppDelegate {
	  override func application(
	    _ application: UIApplication,
	    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
	  ) -> Bool {
	ADICIONAR >>>>>     GMSServices.provideAPIKey("YOUR KEY HERE")
	    GeneratedPluginRegistrant.register(with: self)
	    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
	  }
	}


	2) Adicionar no Info.plist

	<key>io.flutter.embedded_views_preview</key>
	<true/>
	
	<key>NSLocationWhenInUseUsageDescription</key>
	<string>Este aplicativo precisa da sua localização para testar esta POC de mapas com o Flutter.</string>