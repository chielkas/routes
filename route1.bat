REM change default route (0.0.0.0) to the wifi's gateway (10.36.128.1) with a high prio (metric 5)
route change 0.0.0.0 mask 0.0.0.0 10.36.128.1 metric 5

REM add a route for local traffic (10.0.0.0) to the lan gateway (10.56.43.1) with a prio lower than the default route (metric 200)
route add 10.0.0.0 mask 255.0.0.0 10.56.43.1 metric 200

REM add a route for wifi's local range i.e. DNS (10.36.0.0) with a higer prio than then lan rule (metric 5)
route add 10.36.0.0 mask 255.255.0.0 10.36.128.1 metric 5

REM flush out 'alternative' ip numbers given by the LAN DNS.
ipconfig.exe /flushdns