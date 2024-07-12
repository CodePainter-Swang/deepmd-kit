import numpy as np
import matplotlib.pyplot as plt

nbins = 100 # define the number of bins in the RDF

with open("/work/wangs/DeepMD-kit/deepmd-kit/examples/water/lmp/fathergraph_h2o.rdf", "r") as f: # read the licl.rdf file
    lines = f.readlines()
    lines = lines[3:]
    data = np.zeros((nbins, 7))  
    count = 0  

    for line in lines:  
        nums = line.split()      
        if len(nums) == 8:  
            for i in range(1, 8):  
                data[int(nums[0])-1, i-1] += float(nums[i])  # accumulatie data for each bin  
        if len(nums) == 2:  
            count += 1         # count the number of accumulations for each bin
       
ave_rdf = data / count  # calculate the averaged RDF data
np.savetxt('ave_rdf.txt', ave_rdf)

with open("/work/wangs/DeepMD-kit/deepmd-kit/examples/water/lmp/testTanh10_h2o.rdf", "r") as f: # read the licl.rdf file
    lines = f.readlines()
    lines = lines[3:]
    data2 = np.zeros((nbins, 7))  
    count2 = 0  

    for line in lines:  
        nums = line.split()      
        if len(nums) == 8:  
            for i in range(1, 8):  
                data2[int(nums[0])-1, i-1] += float(nums[i])  # accumulatie data2 for each bin  
        if len(nums) == 2:  
            count2 += 1         # count2 the number of accumulations for each bin
       
ave_rdf2 = data2 / count2  # calculate the averaged RDF data
np.savetxt('ave_rdf2.txt', ave_rdf2)


labels1 = ["DeepMD","DeepMD","DeepMD"]
colors1 = ['Red']

labels2 = ["Ours"]
colors2 = ["Blue"]

for i, label, color in zip(range(1, 7, 2), labels1, colors1):
    plt.plot(ave_rdf[:, 0], ave_rdf[:, i], label=label, color=color)

for i, label, color in zip(range(1, 7, 2), labels2, colors2):
    plt.plot(ave_rdf2[:, 0], ave_rdf2[:, i], label=label, color=color)

plt.title('Comparison of DeepMD-Kit and Tanh-Single-layer lammps')
plt.xlabel('r/A')
plt.ylabel('g(r)')
plt.legend()
plt.savefig('/work/wangs/DeepMD-kit/deepmd-kit/examples/water/lmp/Comparison.png', dpi=300)
plt.show()