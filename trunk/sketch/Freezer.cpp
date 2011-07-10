#include "Freezer.h"
   
/** Default constructor. */
Freezer::Freezer() {
}
 
/** Desctructor. */
Freezer::~Freezer(){
}

/** Circuit initialization. */
void Freezer::initialize() {
  
    // Set pins to output so you can control the shift register.
    pinMode(LATCH_PIN, OUTPUT);
    pinMode(CLOCK_PIN, OUTPUT);
    pinMode(DATA_PIN, OUTPUT);
    pinMode(OUTPUT_ENABLED_PIN, OUTPUT);
    pinMode(OVERRIDING_CLEAR_PIN, OUTPUT);
    
    // Set pins to input so you can trigger the circuit.
    pinMode(INPUT1_PIN , INPUT);
    pinMode(INPUT2_PIN , INPUT);
    
    // Set the pins values.
    digitalWrite(LATCH_PIN, LOW);
    digitalWrite(CLOCK_PIN, LOW);
    digitalWrite(DATA_PIN, LOW);
    digitalWrite(OUTPUT_ENABLED_PIN, LOW);
    digitalWrite(OVERRIDING_CLEAR_PIN, HIGH);
}

/**
 * Write the given string, a sequence of 0 and 1, into the shift registers.
 * @param flags The string representing a 
 *     sequence of bits.
 */
void Freezer::write(unsigned int value) {

    unsigned int mask = 1u;
  
    // Clear everything to prepare shift register for bit shifting.
    digitalWrite(DATA_PIN, LOW);
    digitalWrite(CLOCK_PIN, LOW);
    digitalWrite(LATCH_PIN, LOW);

    for (int i = 0; i < 16; i++) {
      
        // Reset the clock pin.
        digitalWrite(CLOCK_PIN, LOW);

        // Write a bit into the registers.
        if ((value & mask) == mask) {
            digitalWrite(DATA_PIN, HIGH);
        } else {
            digitalWrite(DATA_PIN, LOW);
        }
  
        // Register shifts bits on upstroke of clock pin. 
        digitalWrite(CLOCK_PIN, HIGH);
        
        // Zero the data pin after shift to prevent bleed through.
        digitalWrite(DATA_PIN, LOW);
        
        mask <<= 1;
    }

    // Stop shifting.
    digitalWrite(CLOCK_PIN, LOW);
    digitalWrite(LATCH_PIN, HIGH);
}

