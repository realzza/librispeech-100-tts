#!/usr/bin/env bash
# Set bash to 'debug' mode, it will exit on :
# -e 'error', -u 'undefined variable', -o ... 'error in pipeline', -x 'print commands',
set -e
set -u
set -o pipefail

fs=16000
n_fft=1024
n_shift=256

tag="tts_16k_char"

train_set="train_clean_100"
valid_set="dev_clean"
# test_sets="dev_clean"
test_sets="test_clean dev_clean"

train_config=conf/tuning/train_transformer.yaml
inference_config=conf/decode.yaml


./tts.sh \
    --ngpu 2 \
    --lang en \
    --feats_type raw \
    --fs "${fs}" \
    --n_fft "${n_fft}" \
    --n_shift "${n_shift}" \
    --token_type char \
    --cleaner none \ # https://github.com/espnet/espnet/issues/3872
    --tag "${tag}" \
    --train_config "${train_config}" \
    --inference_config "${inference_config}" \
    --train_set "${train_set}" \
    --valid_set "${valid_set}" \
    --test_sets "${test_sets}" \
    --srctexts "data/${train_set}/text" \
    --audio_format "flac" "$@"
