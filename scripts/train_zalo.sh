export CUDA_VISIBLE_DEVICES=1
HOME=~/joanna
REPO=$HOME/zalo/multi_qa/Entity-Relation-As-Multi-Turn-QA
PRETRAINED_MODEL=vinai/phobert-base


python $REPO/train.py \
--dataset_tag zalo \
--train_path $REPO/data/cleaned_data/zalo/train.json \
--train_batch 20 \
--test_path $REPO/data/cleaned_data/zalo/dev.json \
--test_batch 20 \
--pretrained_model_path $PRETRAINED_MODEL \
--max_epochs 10 \
--warmup_ratio 0.1 \
--lr 2e-5 \
--theta 0.25 \
--window_size 200 \
--overlap 45 \
--threshold 3 \
--max_grad_norm 1 \
--test_eval \
--seed 0 \
--amp
