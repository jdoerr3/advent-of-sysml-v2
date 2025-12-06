package AdventOfSysMLv2_Lesson06 {
    private import ScalarValues::*;

    part def SantaSleigh {
        // Components of the sleigh
        part cockpit {
            doc
            /* This is where driver sits. */
            ref item driver;
        }
        part cargoBay {
            doc
            /* Place for the GiftBag. */
        }
        part dashboard {
            doc
            /* Naughty-Nice dashboard. */
        }
    }

    abstract ref part reindeer : Reindeer [10];

    ref part dasher subsets reindeer;
    ref part dancer subsets reindeer;
    ref part prancer subsets reindeer;
    ref part vixen subsets reindeer;
    ref part comet subsets reindeer;
    ref part cupid subsets reindeer;
    ref part donner subsets reindeer;
    ref part blitzen subsets reindeer;
    ref part rudolph subsets reindeer { attribute redefines energyLevel := 200.0; }
    ref part josh subsets reindeer { attribute redefines energyLevel := 9000.1; }

    part def Reindeer {
        attribute energyLevel : Real default := 100.0;
    }
}
