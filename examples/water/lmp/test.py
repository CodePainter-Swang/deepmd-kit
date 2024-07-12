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


labels1 = ['DeepMD', 'Ours']
colors1 = ['Red', 'Blue']

plt.plot(ave_rdf[:, 0], ave_rdf[:, 3], label=labels1[0], color=colors1[0])
plt.plot(ave_rdf2[:, 0], ave_rdf2[:, 3], label=labels1[1], color=colors1[1])

plt.title('Comparison of DeepMD-Kit and Tanh-Single-layer lammps')
plt.ylim(0,30)
plt.xlabel('r/A')
plt.ylabel('(c)g$_{oh}$(r)')
plt.legend()
plt.savefig('/work/wangs/DeepMD-kit/deepmd-kit/examples/water/lmp/Comparison-O-H-2.png', dpi=300)
plt.show()