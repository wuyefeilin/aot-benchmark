export CUDA_VISIBLE_DEVICES=0,1,2,3

exp="default"
gpu_num="4"

# model="aott"
# model="aots"
# model="aotb"
# model="aotl"
model="r50_aotl"
# model="swinb_aotl"
# model="rs101_aotl"

## Training ##
# stage="pre"
# python tools/train.py --amp \
# 	--exp_name ${exp} \
# 	--stage ${stage} \
# 	--model ${model} \
# 	--gpu_num ${gpu_num} \
	
stage="pre_ytb"
python tools/train.py --amp \
	--exp_name ${exp} \
	--stage ${stage} \
	--model ${model} \
	--gpu_num ${gpu_num}  

# stage="pre_blk"
# python tools/train.py --amp \
# 	--exp_name ${exp} \
# 	--stage ${stage} \
# 	--model ${model} \
# 	--gpu_num ${gpu_num} 

# stage="pre_blk_ytb"
# python tools/train.py --amp \
# 	--exp_name ${exp} \
# 	--stage ${stage} \
# 	--model ${model} \
# 	--gpu_num ${gpu_num}

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

# dataset="youtubevos2019"
# split="val"  # or "val_all_frames"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} 

# dataset="youtubevos2019"
# split="val"  # or "val_all_frames"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 99000 

# dataset="youtubevos2019"
# split="val"  # or "val_all_frames"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 98000 
# dataset="youtubevos2019"
# split="val"  # or "val_all_frames"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 97000 

# dataset="youtubevos2019"
# split="val"  # or "val_all_frames"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 96000 

# dataset="youtubevos2019"
# split="val"  # or "val_all_frames"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 95000 

# dataset="youtubevos2019"
# split="val"  # or "val_all_frames"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 94000 

# dataset="youtubevos2019"
# split="val"  # or "val_all_frames"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 93000 

# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 92000 \

# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 91000 \

# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 90000 \

# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 89000 \

# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 88000 \

# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 87000 \

# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 86000 \

# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 85000 \

# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 84000 \

# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 83000 \

# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 82000 \

# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--ckpt_step 81000 \

# dataset="youtubevos2019"
# split="val"  # or "val_all_frames"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--flip --ms  0.85 1.0 1.3 \



# # model="r50_aotl"
# model="swinb_aotl"
# # model="rs101_aotl"
# exp="default"
# stage="pre_ytb"
# export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
# gpu_num="8"
# dataset="youtubevos2019"
# split="val"  # or "val_all_frames"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num} \
# 	--flip --ms  0.85 1.0 1.3 \
# 	--ckpt_step 95000
