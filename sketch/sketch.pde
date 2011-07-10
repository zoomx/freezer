/*
 * Arduino Sketch file.
 *
 * Created on June 18, 2011
 *
 * Copyright (C) 2011 Remigi Giovanni
 * g.remigi@kineticsystem.org
 * www.kineticsystem.org
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2 of the License, or (at your option) any
 * later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Lesser General Public License 
 * along with this program; if not, write to the Free Software Foundation, Inc.,
 * 675 Mass Ave, Cambridge, MA 02139, USA.
 */

#include "Freezer.h"

byte stateInput1 = LOW;

byte stateInput2 = LOW;

// Bitmasks.
unsigned int M0 = 1u;
unsigned int M1 = 2u;
unsigned int M2 = 4u;
unsigned int M3 = 8u;
unsigned int M4 = 16u;
unsigned int M5 = 32u;
unsigned int M6 = 64u;
unsigned int M7 = 128u;
unsigned int M8 = 256u;
unsigned int M9 = 512u;
unsigned int M10 = 1024u;
unsigned int M11 = 2048u;
unsigned int M12 = 4096u;
unsigned int M13 = 8192u;
unsigned int M14 = 16384u;
unsigned int M15 = 32768u;

// This is the component used to control the circuit.
Freezer freezer;

/** Arduino initialisation. */
void setup() {
    freezer.initialize();
    freezer.write(0u);
}

/** This method is continuously invoked by the Arduino framework. */
void loop() {
  
    // read the state of the pushbutton value:
    
    stateInput1 = digitalRead(Freezer::INPUT1_PIN);
    stateInput2 = digitalRead(Freezer::INPUT2_PIN);
    
    if (stateInput1 == HIGH || stateInput2 == HIGH) {
        freezer.write(M0); delay(1);
        freezer.write(M1); delay(2);
        freezer.write(M2); delay(4);
        freezer.write(M3); delay(8);
        freezer.write(M4); delay(16);
        freezer.write(M5); delay(32);
        freezer.write(M6); delay(64);
        freezer.write(M7); delay(128);
        freezer.write(M8); delay(128);
        freezer.write(M9); delay(64);
        freezer.write(M10); delay(32);
        freezer.write(M11); delay(16);
        freezer.write(M12); delay(8);
        freezer.write(M13); delay(4);
        freezer.write(M14); delay(2);
        freezer.write(M15); delay(1);
    } else {
        freezer.write(0u);
    }
}

