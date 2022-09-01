import re
import sys
import os


#used for extracting the information of dynamic trait function call in MIR  
def deal_with_mir(file):
    with open(file,encoding='utf-8') as file:
        content = file.readlines()
    rule = r"^_.+ = <dyn .+ as .+>::.+"
    for line in content:
        temp = line.strip().split("//")
        statement = temp[0].strip()
        if(re.match(rule,statement)):
            #print(statement)
            scope = temp[1].strip().split("/")
            #print(scope[-1])
            file = temp[1].strip().split(".rs:")
            file_name = file[0].split(" at ")[-1]
            loc = file[1].split(": ")
            loc1 = loc[0].split(":")
            loc2 = loc[1].split(":")
            row1 = loc1[0]
            row2 = loc2[0]
            col1 = loc1[1]
            col2 = loc2[1]
            trait_name_temp = statement.split(" as ")[1].split(">::")
            trait_name = trait_name_temp[0]
            func_name = trait_name_temp[1].split("(")[0]
            location = file_name +'_' + row1 + '_' + col1
            print(location, trait_name, func_name)


file = str(sys.argv[1])
if(os.path.isdir(file)):
    files = os.listdir(file)
    for f in files:
        if ".mir" in f:
            path_1 = file+"/"+f
            deal_with_mir(path_1)
else:
    deal_with_mir(file)