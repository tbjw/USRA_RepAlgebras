#! /usr/bin/env python

import os, shutil, sys

exitCode=0

sourcePath=os.path.expanduser("~")+"/Library/texmf/bibtex/bib/Standard_BibTeX5.bib"
targetPath=os.path.dirname(os.path.realpath(__file__))+"/BenW_Standard_BibTeX5.bib"

try:
    shutil.copy(sourcePath, targetPath)
except:
    f=open("error_log.txt", 'w')
    print("Copying: "+sourcePath+" to "+targetPath+" failed.")
    exitCode=exitCode+4


sys.exit(exitCode)

