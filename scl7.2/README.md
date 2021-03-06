### Gazebo (http://gazebosim.org)
> Installation scripts for compiling and deploying Gazebo from source.

## How to install gazebo
```shell
./gazebo7_install.sh
```

## How to install gzweb (web client for Gazebo)
```shell
./gzweb_install.sh
```

## How to run Gazebo with remote 3D rendering
1. make sure that the remote machine has VirtualGL and a TurboVNC installed
2. ssh to the remote machine
3. start the vncserver:
```shell
vncserver :10 #10 is the display number. Any free display number will do.
```
4. start a VNC session from the local machine to the display #10 of the remote machine:
```shell
vncviewer <remote hostname>:10
```
5. start a shell in the remote machine
6. launch gazebo with VirtualGL:
```shell
vglrun ./start_gazebo.sh
```

## How to run gzweb (web client for Gazebo)
1. start gzserver+gzweb on the machine with Gazebo installed:
```shell
./start_gzweb.sh
```
Note: gzweb's log file is /tmp/gzweb.log.

Now you should be able to use the Gazebo's web interface from any browser with WebGL and WebSocket support. Gazebo is typically available at http://&lt;address of machine with gazebo installed&gt;:8080. See gzweb log file for the exact URL.

## How to stop gzweb (web client for Gazebo)
```shell
./stop_gzweb.sh
```
