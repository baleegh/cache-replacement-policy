import os
import subprocess

print("starting execution")

cmd = "export NTHREADS=3"
os.system(cmd)

cmd = "echo $NTHREADS"
result = subprocess.check_output(cmd.split(" ")).decode('utf-8')
print(result)