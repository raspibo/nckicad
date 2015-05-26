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

for item in b.GetTracks():
	width = item.GetWidth()
	clearance = item.GetClearance()
        print " * Via:   %f "%ToUnits(width)
        print " * Clearance:   %f "%ToUnits(clearance)
	item.SetWidth(FromUnits(0.1))
	#item.SetClearance(FromUnits(0.2))
b.Save(filename) 
