package L10_AnnotatedWorkshop {
    public import ScalarValues::*;
    public import ISQ::*;

    part def ElfWorkshop {
        doc locale "en_US"
        /* Central facility for toy production and sleigh preparation at the North Pole. 
         * This model demonstrates full use of annotations for a workshop system.
         */

        doc locale "hu_HU"
        /* A Mikulás műhelye a játékgyártás és szánkészítés központja az Északi-sarkon. */

        part toyMachines [5] {
            doc
            /* Automated machines for efficient toy assembly. */

            comment namedEfficiencyComment
            /* Rate optimized for holiday demand peaks. */
        }

        ref part elves [100] {
            doc
            /* Skilled workers managing workshop operations. */
        }

        part materialStorage {
            doc locale "en_US"
            /* Warehouse for storing raw materials and components used in toy production. */

            doc locale "lt_LT"
            /* Sandėlis žaliavoms ir komponentams, naudojamiems žaislų gamyboje, saugoti. */

            comment materialInventory
            /* Tracks inventory levels and reorder points for critical materials. */
        }

        part packagingArea {
            doc locale "en_US"
            /* Dedicated space for wrapping and packaging finished toys for distribution. */

            comment packagingStandards
            /* Ensures consistent branding and presentation across all products. */
        }
    }
}
