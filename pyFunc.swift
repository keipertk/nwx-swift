
import python;

f()
{
  python("""
from NWChemEx import *
import cppyy
print('rhf: Import Passed')
cppyy.gbl.GA_Initialize()
print('rhf: GA_Initialize passed')
mm = NWChemEx.default_mm()
molecule = LibChemist.MoleculeManager().at('water')
basis = LibChemist.apply_basis('sto-3g', molecule)
print('rhf: Input initialization passed')
""", "repr(0)");
}

f();
