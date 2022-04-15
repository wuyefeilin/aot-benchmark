export CUDA_VISIBLE_DEVICES=4,5,6,7

exp="default"
gpu_num="4"

# model="aott"
# model="aots"
# model="aotb"
# model="aotl"
# model="r50_aotl"
model="swinb_aotl"
# model="rs101_aotl"

## Training ##
# stage="pre"
# python tools/train.py --amp \
# 	--exp_name ${exp} \
# 	--stage ${stage} \
# 	--model ${model} \
# 	--gpu_num ${gpu_num} \
	
# stage="pre_ytb"
# python tools/train.py --amp \
# 	--exp_name ${exp} \
# 	--stage ${stage} \
# 	--model ${model} \
# 	--gpu_num ${gpu_num}

stage="pre_blk_ytb"
python tools/train.py --amp \
	--exp_name ${exp} \
	--stage ${stage} \
	--model ${model} \
	--gpu_num ${gpu_num}

## Evaluation ##
# dataset="davis2017"
# split="test"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num}

# dataset="davis2017"
# split="val"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num}

# dataset="davis2016"
# split="val"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num}

# dataset="youtubevos2018"
# split="val"  # or "val_all_frames"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num}

dataset="youtubevos2019"
split="val"  # or "val_all_frames"
python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num}

stage="pre_blk_ytb"
export CUDA_VISIBLE_DEVICES=4,5,6,7
gpu_num="4"
dataset="youtubevos2019"
split="val"  # or "val_all_frames"
python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
	--flip --ms 0.5 0.75 1.0 1.25 1.5