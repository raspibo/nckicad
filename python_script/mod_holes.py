#!/usr/bin/env python
import sys
from pcbnew import *

ToUnits=ToMM
FromUnits=FromMM 
 
filename=sys.argv[1]
 
b = LoadBoard(filename)
#for module in pcb.GetModules():   
#    print "* Module: %s"%module.GetReference()
#    module.GetValueObj().SetVisible(False)      # set Value as Hidden
#    module.GetReferenceObj().SetVisible(True)   # set Reference as Visible

U1 = b.FindModuleByReference('U1')
pads = U1.Pads() 
for p in pads:
    drill=p.GetDrillSize() #, pcbnew.ToMM(p.GetLocalSolderPasteMargin())
    print ToUnits(drill)
    p.SetDrillSize(wxSize( FromUnits(0.2),FromUnits(0.2)))
#    id = int(p.GetPadName())
#    if id<15: p.SetLocalSolderPasteMargin(0)     

b.Save(filename) 
