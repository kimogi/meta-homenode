# meta-anteater
Distro layer for basic home node with SSH, WiFi and libgpiod support.

Tested with `meta-raspberrypi` layer. Add the folowing to your `local.conf`

```
MACHINE = "raspberrypi2"
DISTRO = "anteater"
```

Layers setup example

```
openembedded-layer    /home/kimogi/yocto/sources/meta-openembedded/meta-oe                    5
meta-python           /home/kimogi/yocto/sources/meta-openembedded/meta-python                5
networking-layer      /home/kimogi/yocto/sources/meta-openembedded/meta-networking            5
multimedia-layer      /home/kimogi/yocto/sources/meta-openembedded/meta-multimedia            5
raspberrypi           /home/kimogi/yocto/sources/meta-raspberrypi                             9
anteater              /home/kimogi/yocto/sources/meta-anteater                                10
```
