import os

nums = []
for i in range(1,5):
    nums.append(int(os.environ.get(f'INPUT_NUM{i}')))

with open(os.environ['GITHUB_OUTPUT'], 'a') as fh:
    print(f'sum={sum(nums)}', file=fh)
