#!/bin/bash
th train.lua -gpuid 1 -data_dir data/jinyong -rnn_size 1536 -num_layers 3 -dropout 0.5 -print_every 10 -eval_val_every 1000 -checkpoint_dir cv-jinyong
