package L12_ReindeerDrawnSleighAssembly_Challenge {
    // Abstract components
    // TODO: model an abstract Vehicle and a concrete Person (part def)
    // TODO: add usages "driver" and "driving" (part usages), respectively
    
    // Components definitions
    // TODO: extend "Sleigh" to specialize "Vehicle"
    part def Sleigh {
        abstract ref part reindeer : Reindeer [9];
    }

    part def Reindeer {
        ref part pulling : Sleigh;
    }
    
    // Connection definitions connecting components
    // TODO: add a new connection def to model the connection between a person
    // and a vehicle (do not forget the cross subsettings)
    connection def Harness {
        end part sleigh : Sleigh crosses reindeer.pulling;
        end part reindeer : Reindeer crosses sleigh.reindeer;
    }
    
    // Connecting in a context
    part def ReindeerDrawnSleighAssembly {
        part sleigh : Sleigh;
        // TODO: model Santa as a usage of the part def "Person"
        abstract part reindeer : Reindeer [9];
        part rudolph [1] : Reindeer subsets reindeer;
        // TODO: add more reindeer to connect

        connection harnesses : Harness connect [1] sleigh to [9] reindeer;
        connection subsets harnesses {
            end [1] part :>> sleigh references ReindeerDrawnSleighAssembly::sleigh;
            end [1] part :>> reindeer references rudolph;
        }
        // TODO: add more connections to the different reindeer
        // TODO: add a connection between Santa and the sliegh (do not forget cross multiplicities)
    }
}
