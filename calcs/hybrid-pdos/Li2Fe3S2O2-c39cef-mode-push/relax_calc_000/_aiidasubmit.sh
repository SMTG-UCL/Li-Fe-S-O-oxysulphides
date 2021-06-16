#!/bin/bash
#SBATCH --no-requeue
#SBATCH --job-name="aiida-566898"
#SBATCH --output=_scheduler-stdout.txt
#SBATCH --error=_scheduler-stderr.txt
#SBATCH --partition=standard
#SBATCH --account=e05-power-dos
#SBATCH --qos=standard
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=104
#SBATCH --time=1-00:00:00


module load epcc-job-env
export OMP_NUM_THREADS=1

'srun' '-n' '416' '--cpu-bind=rank' '--hint=nomultithread' '--distribution=block:block' '/work/e05/e05/bz1/vasp/6.2.0/bin/vasp_std'  > 'vasp_output' 2>&1
