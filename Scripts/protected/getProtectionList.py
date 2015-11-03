#! /usr/bin/python

import sys, os

#############################
bmName = sys.argv[1]
#############################

sddsList = []
cfStaticDic = {}
cfFiList = []
resultList = []


######################################################

# node operations
def getIndex(node):
        nodeElements = node.split(".")
        return nodeElements[0]

def getInstType(node):
        nodeElements = node.split(".")
        return nodeElements[1]

def isUsedInMem(node):
        nodeElements = node.split(".")
        return nodeElements[2]

def isResultPtr(node):
        nodeElements = node.split(".")
        return nodeElements[3]

#######################################################


# read cf static list
with open("cf_static_points.txt") as f:
	for line in f:
		cfStaticDic[int(line.split()[0])] = line.split()[1]

# read cf fi list
with open("cf_fi_points.txt") as f:
	for line in f:
		cfFiList.append(int(line))

# read sdds file
with open("../SDDS_filtered.txt") as f:
	for line in f:
		sddsList.append(line)


for index in cfFiList:
	if cfStaticDic[int(index)] == "single":
		if int(index) not in resultList:
			resultList.append(int(index))
			continue
		else:
			continue

	# for the one need all index on chain
	for sddsLine in sddsList:
		if `index` in sddsLine.split(".")[0] or "->"+`index`+"." in sddsLine:
			for node in sddsLine.split("->"):
				if node == "\n":
					continue
				nodeIndex = getIndex(node)
				if int(nodeIndex) not in resultList:
					resultList.append(int(nodeIndex))

#for index in cfStaticDic:
#	if cfStaticDic[int(index)] == "single" and int(index) not in resultList:
#		resultList.append(int(index))

# sort
resultList.sort()
os.system("rm protection_list.txt")

for index in resultList:
	with open("protection_list.txt", "a") as f:
		f.write(`index`+"\n")
		
		
