package L05_SantaSleigh_Challenge {
    private import ScalarValues::*;

    part def GiftBag;
    part def OrdinaryGiftBag :> GiftBag;
    part def BottomlessGiftBag :> GiftBag;

    abstract part def CargoBay {
        abstract item payload : GiftBag [*];
    }

    part def ordinaryCargoBay :> CargoBay {
        item :>> payload [1] : BottomlessGiftBag;
    }

    part def MagicalCargoBay :> CargoBay {
        item :>> payload : OrdinaryGiftBag;
    }

    part def SantaSleigh {
        part cockpit;
        // TASK 1:
        // Model the cargo bay's definition such that it can be either an ordinary
        // cargo bay that may hold one payload that is a bottomless gift bag, or
        // a magical cargo bay that can hold an arbitrary number of ordinary bags.
        // We want to be able to access the payload of the cargo bay rgardless of
        // the configuration.
        part cargoBay : ordinaryCargoBay;
        part dashboard;

        // TASK 2:
        // Add composite or referential usages to model:
        // - exctly two runners, enumerated as the left runner nd the right runner
        // - Mrs. Claus (Santa has to communicate with her during work)

        ref item mrsClaus;

        abstract part runners : Runner [2];
        part leftRunner :> runners {
            attribute :>> runnerSide = runnerSide::left;
        }
        part rightRunner :> runners {
            attribute :>> runnerSide = runnerSide::right;
        }
        // TASK 4:
        // Review the multiplicities int he whole model and specify it whenever the
        // default is not suitable.
        ref item santa;
        abstract ref part reindeer : Reindeer [9];

        ref part dasher subsets reindeer [1];
        ref part dancer subsets reindeer [1];
        ref part prancer subsets reindeer [1];
        ref part vixen subsets reindeer [1];
        ref part comet subsets reindeer [1];
        ref part cupid subsets reindeer [1];
        ref part donner subsets reindeer [1];
        ref part blitzen subsets reindeer [1];
        ref part rudolph subsets reindeer [1];
    }

    part def Reindeer {
        attribute energyLevel : Real;
        constant attribute noseColor;
        // TASK 3:
        // Add attributes to describe the weight and the name of the reindeer
        // (use constant if applicable).
        attribute weight : Real;
        constant attribute name : String;
    }

    part def Runner {
        attribute runnerSide : RunnerSide;
    }

    enum def RunnerSide {
        left;
        right;
    }
}
