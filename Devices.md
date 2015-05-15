# Devices controlled by Freezer #

## Introduction ##

This page contains a list of devices that will be controlled by Freezer.

## Details ##

Multiple cameras Canon 550D

Multiple pocket wizards

## Canon 550D schema ##

Each camera focus and shutter can be controlled by a sub-mini phone stereo 2.5mm male plug.

![http://freezer.googlecode.com/svn/wiki/images/StereoPlug25mm.png](http://freezer.googlecode.com/svn/wiki/images/StereoPlug25mm.png)

When the focus line is short circuited to the ground, the camera automatically focuses on the target. If the lens is set to manual focus or if the camera "Shutter/AE lock" custom function is set to disable the autofocus, the camera simply goes into an active state.

When the shutter line is short circuited to the ground the camera shoots. The shutter response is faster when the camera is in active state.

The equivalent circuit of a Canon 550D is shown here.

![http://freezer.googlecode.com/svn/wiki/images/CameraLogic.png](http://freezer.googlecode.com/svn/wiki/images/CameraLogic.png)

The camera focus/shutter button shares the same circuit of the stereo plug.

Both the above schemes have been taken from [www.doc-diy.net](http://www.doc-diy.net/photo/eos_wired_remote/) and retested here for the Canon 550D. The measured values are equivalent to the ones in the table.

| Voltage (no load) | 3.3 V |
|:------------------|:------|
| Threshold voltage | 1.8 V |
| Short circuit current | 68 µA |
| Current at threshold voltage | 30 µA |

## Arduino Nano ##

To trigger all the cameras at the same the following board has been choosen: Arduino Nano V3.0 AVR ATmega328 P-20AU USB board 3.0. All the information about Arduino boards can be found at the following link.

http://arduino.cc/en/Main/ArduinoBoardNano

The Arduino Nano has been chosen because it is small, can be controlled by a computer using a USB cable and highly configurable.

Following a reference schema for the board.

![http://freezer.googlecode.com/svn/wiki/images/ArduinoNano30.png](http://freezer.googlecode.com/svn/wiki/images/ArduinoNano30.png)

## Components ##

  * 1 x Arduino Nano V3.0 AVR ATmega328 P-20AU USB board 3.0
  * 2 x [Shift register 74HC595](http://ie.mouser.com/ProductDetail/Texas-Instruments/CD74HC595E/?qs=xFfolx0DHx1JFSNYY8Y%252bcg%3d%3d)
  * 4 x [LTV847 optoisolator](http://ie.mouser.com/ProductDetail/Lite-On/LTV-847/?qs=sGAEpiMZZMteimceiIVCBx3Y662pemTNEFNr76lpuig%3d)
  * 6 x [16 pin DIP socket](http://ie.mouser.com/ProductDetail/Tyco-Electronics/1-390261-4/?qs=VZ9FDhhp7Sk4VC7kJdoJYg%3d%3d)
  * 16 x [green LED](http://ie.mouser.com/ProductDetail/Lumex/SSL-LX3044GT/?qs=sGAEpiMZZMs4quMj8r4lmseJuVvjafN3ffkY8By3PB4%3d)
  * 2 x  [0.1 μF capacitor](http://ie.mouser.com/ProductDetail/Kemet/C320C104M5U5CA7301/?qs=sGAEpiMZZMuAYrNc52CMZC88u1mIuvbkaeORMiJvGuc%3d) (maybe not required)
  * 16 x [3.5mm Mono Jacks](http://ie.mouser.com/ProductDetail/Kycon/STX-3150-3CM/?qs=sGAEpiMZZMv0W4pxf2HiV%252bMrz3tI9gUV0Hk4TyfVWyY%3d)
  * 4 x [47Ω 8 pins resistor array](http://ie.mouser.com/ProductDetail/Bourns/4608X-102-470LF/?qs=sGAEpiMZZMvrmc6UYKmaNRDegYSU8RrK6ALR2%252b0b52c%3d) or 2 x [47Ω 16 pins resistors network](http://ie.mouser.com/ProductDetail/Bourns/4116R-1-470LF/?qs=sGAEpiMZZMvrmc6UYKmaNZ5afG5ShwJb%2fuAuF16Sfps%3d) between shift registers and optoisolators
  * 16 x 1KΩ resistor for the LEDs

Components under evaluation

  * [220Ω resistors network](http://ie.mouser.com/ProductDetail/Bourns/4116R-1-221LF/?qs=HO6k8Uo500nFG8aGDjOhHw%3d%3d)

  * [120Ω resistors network](http://ie.mouser.com/ProductDetail/Bourns/4116R-1-121LF/?qs=sGAEpiMZZMvrmc6UYKmaNbZDn6du4%252bd0Okb4g1cIC44%3d)

  * [47Ω resistors network](http://ie.mouser.com/ProductDetail/Bourns/4116R-1-470LF/?qs=sGAEpiMZZMvrmc6UYKmaNZ5afG5ShwJb%2fuAuF16Sfps%3d)

## Circuit schema with test LEDs ##

![http://freezer.googlecode.com/svn/wiki/images/CircuitSchema.png](http://freezer.googlecode.com/svn/wiki/images/CircuitSchema.png)

## Links ##

Arduino

http://www.arduino.cc

http://www.arduino.cc/en/Tutorial/ShiftOut

Photoduino

http://code.google.com/p/photoduino

Camera Axe

http://www.cameraaxe.com

All-in-one Remote

http://www.mindspring.com/~tom2000/Projects/AI-1_Remote/AI-1_Remote.html
