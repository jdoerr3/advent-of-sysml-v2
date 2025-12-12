package SantaSleigh {

    private import ScalarValues::*;

    part def Sleigh {
        doc Description
        /* A specification of Santa's sleigh. */ 
        part chassis;
        part rein [2];
        part runner [2];
        part bench;
        part harness [8];
    }

    part def Chassis{
        attribute color:ColorPalette = ColorPalette::red;
    }

    part def Rein {
        attribute color:ColorPalette = ColorPalette::natural;
    }

    part def Runner{
        attribute color:ColorPalette = ColorPalette::gold;
    }

    part def Bench{
        attribute color:ColorPalette = ColorPalette::red;
    }

    part def Harness{
        attribute color:ColorPalette = ColorPalette::natural;
    }

    enum def ColorPalette{
        red;
        white;
        gold;
        black;
        natural;
    }
}
