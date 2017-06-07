#!/bin/bash
th train.lua -gpuid 0 -data_dir data/condor-triology -rnn_size 1024 -num_layers 3 -dropout 0.5 -print_every 10 -eval_val_every 1000
