#ifndef FREEZER_H
#define FREEZER_H

#include <WProgram.h>

/**
 * This is the main class to control Freezer.
 * A write method with a 16 bits value allows the user to control the
 * 16 outputs if the shift registers.
 */
class Freezer {

public:

    // Pin D6 connected to ST_CP of 74HC595.
    static const byte LATCH_PIN = 6;
    
    // Pin D3 connected to SH_CP of 74HC595.
    static const byte CLOCK_PIN = 3;
    
    // Pin D4 connected to DS of 74HC595.
    static const byte DATA_PIN = 4;
    
    // Pin D5 connected to OE of 74HC595. Low active.
    static const byte OUTPUT_ENABLED_PIN = 5;
    
    // Pin D2 connected to MR of of 74HC595. Low active.
    static const byte OVERRIDING_CLEAR_PIN = 2;
    
    // Pin D7 in read mode.
    static const byte INPUT1_PIN = 7;
    
    // Pin D8 in read mode.
    static const byte INPUT2_PIN = 8;
    
    Freezer();
    ~Freezer();
    void initialize();
    void write(unsigned int value);
};

#endif

