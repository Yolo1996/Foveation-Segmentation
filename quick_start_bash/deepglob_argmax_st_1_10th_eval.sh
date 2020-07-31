python3 eval_multipro.py --gpus 0-1 --cfg config/foveation-deepglob-hrnetv2.yaml DATASET.list_train "./data/DeepGlob/labd_train_list_803_shuff_455_45.odgt" DATASET.list_val "./data/DeepGlob/labd_train_list_803_shuff_207_21.odgt" DATASET.num_class 6 DATASET.ignore_index 6 DATASET.adjust_crop_range False MODEL.hard_fov True MODEL.hard_select False MODEL.Zero_Step_Grad False MODEL.fov_padding True MODEL.patch_bank '[500, 1000, 1500, 2000, 2448]' MODEL.fov_map_scale 24 MODEL.arch_encoder 'resnet50' MODEL.arch_decoder 'upernet' MODEL.fc_dim 2048 TRAIN.batch_size_per_gpu 2 TRAIN.epoch_iters 34 TRAIN.fov_location_step 24 TRAIN.auto_fov_location_step False TRAIN.mini_batch_size 2 TRAIN.num_epoch 50 TRAIN.sync_location 'mean_mbs' TRAIN.eval_per_epoch 1 TRAIN.checkpoint_per_epoch 999 TRAIN.loss_fun 'NLLLoss' VAL.all_F_Xlr_time True VAL.F_Xlr_low_scale 96 VAL.visualize False VAL.hard_max_fov True VAL.rename_eval_folder 'val21_no_visual_lowFxlr_96_' VAL.checkpoint "epoch_last.pth" VAL.dice True VAL.foveated_expection False DIR '/SAN/medic/Histo_MRI_GPU/chenjin/Chen_UCL/Chen_Git/Segmentation/semantic-segmentation-pytorch/ckpt/DeepGlob_fov/compare_GLnet/DeepGlob_pb_500_2448_FPN_ms_24_fixiter24_2gpu_hard_argmax_st_no_adj_crop_bs_2_mbs_2_1_10th_debug'