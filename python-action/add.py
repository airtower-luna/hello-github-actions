import os

nums = []
for i in range(1,5):
    nums.append(int(os.environ.get(f'INPUT_NUM{i}')))

print(f'::set-output name=sum::{sum(nums)}')
