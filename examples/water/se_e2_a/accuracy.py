# -*- coding: utf-8 -*-
import matplotlib.pyplot as plt
import numpy as np

# 读取数据
data = {}
with open("accuracy.out", "r") as file:
    for line in file:
        if line.strip():  # 忽略空行
            label, value = line.split()
            data[label] = float(value)

# 提取数据
indicators = ['Energy_RMSE', 'Energy_RMSE/Natoms', 'Force_RMSE', 'Force_RMSE/Natoms', 'Virial_RMSE', 'Virial_RMSE/Natoms']
ours_values = [data['ours_' + indicator] for indicator in indicators]
deepmd_values = [data['DeepMD_' + indicator] for indicator in indicators]

# 绘制折线图
plt.figure(figsize=(10, 6))
plt.plot(indicators, ours_values, marker='o', label='ours')
plt.plot(indicators, deepmd_values, marker='o', label='DeepMD')

# 添加标题和标签
plt.title('Comparison between "ours" and "DeepMD"')
plt.xlabel('Indicators')
plt.ylabel('Values')
plt.xticks(rotation=45)  # 旋转x轴标签，使其更易读
plt.legend()

# 显示图形
plt.grid(True)
plt.tight_layout()
plt.savefig("accuracy.png", dpi=300)
plt.show()