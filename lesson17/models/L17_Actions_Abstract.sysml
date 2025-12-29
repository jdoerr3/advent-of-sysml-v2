package L17_Actions_Abstract {

    abstract action def WrapPresent;

    action def WrapWithPaper specializes WrapPresent {
        doc /* Primary present wrapping method */
    }

    action def WrapWithRibbon specializes WrapPresent {
        doc /* Alternative present wrapping method */
    }
}
