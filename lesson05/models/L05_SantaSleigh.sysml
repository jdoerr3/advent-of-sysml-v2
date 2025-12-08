package AdventOfSysMLv2_Lesson05 {
    private import ScalarValues::*;

    part def SantaSleigh {
        // A composite usage means that the sleigh consists of a cargoBay (among others).
        // - It cannot be part of anything else.
        // - It will cease to exist when SantaSleigh does.
        part cargoBay : CargoBay;
        
        // A referenial usage means that Santa is not a component of the sleigh,
        // but the sleigh "knows about" Santa.
        ref item santa;

        // An abstract usage cannot have values unless they are also the value of a 
        // concrete subset. Abstract usages are therefore the unions of their subsets.
        // The multiplicity of reindeer is 9 - there are exactly 9 reindeer related 
        // to the sleigh.
        abstract ref part reindeer : Reindeer[9];
        
        // Here are the 9 concrete subsets of reindeer. The default multiplicity is
        // one (a singleton set), so these subsets add up to a total of 9 reindeer.
        ref part dasher  subsets reindeer;
        ref part dancer  subsets reindeer;
        ref part prancer subsets reindeer;
        ref part vixen   subsets reindeer;
        ref part comet   subsets reindeer;
        ref part cupid   subsets reindeer;
        ref part donner  subsets reindeer;
        ref part blitzen subsets reindeer;
        ref part rudolph subsets reindeer;
    }

    part def Reindeer {
        // Structural usages are by default variable (can change over time)
        attribute energyLevel : Real;
        // The value of a constant usage can never change
        constant attribute noseColor;
    }

    // An abstract definition models a partial, incomplete "blueprint" that is 
    // not yet ready to be instantiated/manufactured.
    abstract part def CargoBay;

    // A concrete CargoBay that is now complete for instantiation/manufacturing.
    // Any instance of CargoBay will also be the instance of MagicalCargoBay or
    // some other concrete specialization of CargoBay.
    part def MagicalCargoBay specializes CargoBay;
}