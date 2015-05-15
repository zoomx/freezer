#Introduction.

# Freezer introduction #

The main idea of the project Freezer is developing the hardware and the software to trigger, at the same time or in a programmable sequence, 7 or more Canon 550D cameras using a computer.

The hardware chosen to control the cameras is an Arduino Nano with shift registers to make the hardware easily upgradable in the future. All cameras will be connected to the shift registers by opto-couplers to keep the electronic circuits totally independent.

The Arduino Nano is connected to a computer via USB connection and controlled by a software written in C++ and QT running on a Windows 32 bits operative system.