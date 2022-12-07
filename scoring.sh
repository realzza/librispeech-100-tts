./pyscripts/utils/evaluate_mcd.py exp/tts_tts_16k_char_xvector/decode_train.loss.ave/dev_clean/wav/wav.scp dump/raw/dev_clean/wav.scp --nj 64
./pyscripts/utils/evaluate_mcd.py exp/tts_tts_16k_char_xvector/decode_train.loss.ave/test_clean/wav/wav.scp dump/raw/test_clean/wav.scp --nj 64
./pyscripts/utils/evaluate_mcd.py exp/tts_tts_16k_char_xvector/decode_with_my_vocoder/dev_clean/wav/wav.scp dump/raw/dev_clean/wav.scp --nj 64
./pyscripts/utils/evaluate_mcd.py exp/tts_tts_16k_char_xvector/decode_with_my_vocoder/test_clean/wav/wav.scp dump/raw/test_clean/wav.scp --nj 64