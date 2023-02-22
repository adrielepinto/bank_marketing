# variable

data=$(date +'%y-%m-%dT%H:%M:%S')

path='/Users/adriele/Documents/repos/pa006'
path_to_envs='/Users/adriele/opt/anaconda3/envs/env_pa006/bin'

$path_to_envs/papermill $path/src/models/c11.0-pa006-model-deploy-src.ipynb $path/reports/c11.0-pa006-model-$data.ipynb
