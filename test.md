pseudocode is something like this:
```Java
function load {
    Objective LCG = new DummyObjective();
    LCG.modulus = 17; // a prime number
    LCG.multiplier = 3; // a generator in Z*_17
    LCG.adder = 7; // arbitrary
    LCG.current = 3; // any number invertible in mod 17.
}

/**
    Sets the value `current` of the objective `LCG` to a pseudo-random number. 
    Uses a linear congruence generator, so sets current according to this 
    formula: 

    current = multiplier * current + adder % modulus 
*/
function generate {
    LCG.current *= LCG.multiplier;
    LCG.current += LCG.adder;
    LCG.current %= LCG.modulus;
}

```