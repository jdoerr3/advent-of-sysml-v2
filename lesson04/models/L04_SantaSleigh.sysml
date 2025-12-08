package AdventOfSysMLv2_Lesson04 {
    private import ScalarValues::*;

    part def SantaSleighSketch {
        part dashboard { doc /* Naughty-Nice dashboard. */ }

        // Definition ("defined by" or ":"): reindeer is a usage of the definition Reindeer
        // - reindeer inherits the features of Reindeer
        abstract ref part reindeer : Reindeer [9];
    }

    // Subclassification ("specializes" or ":>"): this definition defines a special kind of 
    // SantaSleighSketch
    // - Can be used to model alternatives, factor out commonalities, or refine partial designs
    part def SantaSleighDesign specializes SantaSleighSketch {
        // Redefinition ("redefines" or ":>>"): in the context of SantaSleighPreliminaryDesign,
        // dashboard is called naughtyNiceDashboard and is defined by NaughtyNiceDashboard
        part nnDashboard redefines dashboard defined by NaughtyNiceDashboard;
        
        // Subsetting ("subsets" or ":>"): rudolph is a singleton subset of all the reindeer
        // - Can be used to enumerate elements or further restrict subsets
        ref part rudolph subsets reindeer {
            // Another redefinition to say that rudolph has a red nose (without changing the
            // name of noseColor)
            attribute :>> noseColor = Color::red;
        }
    }

    part def NaughtyNiceDashboard;

    part def Reindeer {
        attribute noseColor : Color;
    }

    enum def Color {
        enum orange; enum yellow; enum green;
        enum blue;   enum indigo; enum violet;
        enum silver; enum gold;   enum red;
    }
}

