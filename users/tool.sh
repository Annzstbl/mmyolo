###
 # @Author: annzstbl@tianhaoli1996@gmail.com
 # @Date: 2024-04-17 10:15:09
 # @LastEditors: annzstbl@tianhaoli1996@gmail.com
 # @LastEditTime: 2024-04-23 14:24:38
 # @FilePath: /mmyolo/users/tool.sh
 # @Description: 
 # 
 # Copyright (c) 2024 by ${annzstbl}, All Rights Reserved. 
### 
CUDA_VISIBLE_DEVICES=7 python tools/train.py configs/yolov8/yolov8_l_mask-refine_syncbn_fast_8xb16-500e_coco_hod3ksa.py

CUDA_VISIBLE_DEVICES=7 python tools/test.py configs/yolov8/yolov8_l_mask-refine_syncbn_fast_8xb16-500e_coco_hod3ksa.py\
                     /data/users/litianhao/mmyolo/work_dirs/yolov8_l_mask-refine_syncbn_fast_8xb16-500e_coco_hod3ksa/best_coco_bbox_mAP_epoch_50.pth \
                     --show-dir show_results

# 设置环境变量
# os.environ['HTTP_PROXY'] = '10.106.14.29:20811'
# os.environ['HTTPS_PROXY'] = '10.106.14.29:20811'
export HTTP_PROXY=10.106.14.29:20811 && export HTTPS_PROXY=10.106.14.29:20811 && CUDA_VISIBLE_DEVICES=7 python tools/train.py configs/yolov8/yolov8_l_mask-refine_syncbn_fast_8xb16-500e_coco_hod3ksa.py