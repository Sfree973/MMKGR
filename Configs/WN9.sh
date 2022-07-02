#!/usr/bin/env bash
'''
 configs of dataset_WN in MMKGR (Zheng et. al ICDE 2023)
'''
data_dir="data/WN9-IMG-TXT"
model="point"
group_examples_by_query="False"
use_action_space_bucketing="True"
bandwidth=400
entity_dim=200
relation_dim=200
image_dim=4096
text_dim=1000
history_dim=200
history_num_layers=3
num_rollouts=1
num_rollout_steps=1
bucket_interval=10
num_epochs=40
num_wait_epochs=2
num_peek_epochs=2
batch_size=128
train_batch_size=512
dev_batch_size=2
learning_rate=0.001
baseline="n/a"
grad_norm=0
emb_dropout_rate=0.3
ff_dropout_rate=0.1
action_dropout_rate=0.5
action_dropout_anneal_interval=1000
beta=0.02
relation_only="False"
beam_size=128
num_paths_per_entity=-1
margin=-1
