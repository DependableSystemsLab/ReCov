#! /usr/bin/python

# This script finds Q.S which is the end of loops.

import os, sys

################################################
bmFile = "../" + sys.argv[1] + "-llfi_index.ll"
################################################

os.system("opt -analyze -loops " + bmFile + " > loops.txt")

loopsLineList = []
qsDic = {} # indexed by function name. BB name inside function index as list.

with open("loops.txt") as f:
	for line in f:
		loopsLineList.append(line)

# Finding exit node of loops
currentFunc = ""
for line in loopsLineList:
	if "Printing" in line:
		# function name
		funcName = line.split("for function '")[1].replace("':", "").replace("\n", "")
		qsDic[funcName] = []
		currentFunc = funcName
		continue
	if "Loop at " in line:
		if currentFunc == "":
			continue
		# loop bb names
		bbList = line.split("containing: ")[1].replace("\n", "").replace("%", "").split(",")
		for bbName in bbList:
			if "<exiting>" in bbName:
				exitBbName = bbName.split("<")[0]
				qsDic[currentFunc].append(exitBbName)
		continue


codeLineList = []
with open(bmFile) as f:
	for line in f:
		codeLineList.append(line)

qsIndexList = []
for funcName in qsDic:
	inFuncFlag = False
	inBbFlag = False
	for line in codeLineList:
		if "define" in line and "{" in line and funcName in line:
			inFuncFlag = True
			continue
		if "define" in line and "{" in line:
			inFuncFlag = False
			continue
		if inFuncFlag == True:
			if ":" in line and ";" in line and "!llfi_index" not in line:
				inBbFlag = False
				# in bb
				if line.split(":")[0].replace(" ", "") in qsDic[funcName]:
					inBbFlag = True
					continue
			if inBbFlag == True:
				if "br" in line and "!llfi_index" in line:
					qsIndex = line.split("!llfi_index !")[1]
					print int(qsIndex)
					qsIndexList.append(int(qsIndex))
os.system("rm qsIndex.txt")
for index in qsIndexList:
	with open("qsIndex.txt", "a") as f:
		f.write(`index`+"\n")


