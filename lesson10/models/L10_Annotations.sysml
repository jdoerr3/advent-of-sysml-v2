package L10_Annotations {
    part def SantaSleigh {
        doc locale "en_US"
        /* This version of Santa's sleigh demonstrates how to specify 
         * elements in other languages.
         */

        doc docHu locale "hu_HU"
        /* A Mikulás szánjának ezen verziója bemutatja, hogyan adható
         * meg egy modellelem más nyelveken is.
         */

        doc docLt locale "lt_LT"
        /* Ši Kalėdų Senelio rogių versija parodo, kaip nurodyti modelio
         * elementus kitomis kalbomis.
         */

        ref item santa {
            comment locale "en_US"
            /* This is a comment with a locale. */

            comment namedComment about greet
            /* This is also a comment - now with a name, and about "greet". */

            /* One last comment - next ahead is the textual representation! */

            action greet {
                // We will learn about actions in a later episode

                language "python"
                /* print("Ho ho ho! Merry Christmas!") */

                rep inAlf language "alf"
                /* WriteLine("Ho ho ho! Merry Christmas!"); */
            }
        }
    }
}
