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

byte stateInput = LOW;

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
    
    stateInput = digitalRead(Freezer::INPUT1_PIN);
    
    if (stateInput == HIGH) {
        freezer.write(10922u); delay(100); // Activate
        freezer.write(16383u); delay(100); // Shoot
        freezer.write(65535u); delay(100); // Flash
        freezer.write(0u); delay(200);     // Avoid multiple shots.
    } else {
        freezer.write(0u);
    }
}

