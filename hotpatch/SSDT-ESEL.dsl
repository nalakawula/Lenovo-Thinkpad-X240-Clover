// Disabling ESEL

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "X240", "_ESEL", 0)
{
#endif
    External(_SB.PCI0.XHC.ESEL, MethodObj)
    Method(_SB.PCI0.XHC.ESEL)
    {
        // do nothing
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF