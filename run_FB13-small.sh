
start=$(date)

python run_bert_triple_classifier.py \
--task_name kg \
--do_train \
--do_eval \
--do_predict \
--data_dir ./data/FB13_small \
--bert_model bert-base-cased \
--max_seq_length 200 \
--train_batch_size 32 \
--learning_rate 5e-5  \
--num_train_epochs 3.0 \
--output_dir ./output_FB13/ \
--gradient_accumulation_steps 1 \
--eval_batch_size 256

end=$(date)

echo $start
echo $end
