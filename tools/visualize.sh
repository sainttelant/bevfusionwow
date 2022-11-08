export CONFIG=./configs/nuscenes/det/transfusion/secfpn/camera+lidar/swint_v0p075/convfuser.yaml
export CHECKPOINT=./tools/pretrained/bevfusion-det.pth
export OUTDIR=./data/fusion-det
export MODE=pred
export BBOXSCORE=0.45


# for segmentation task

export CONFIG=./configs/nuscenes/seg/fusion-bev256d2-lss.yaml 
export CHECKPOINT=./tools/pretrained/bevfusion-seg.pth
export OUTDIR=./data/fusion-det
export MODE=pred
export MAPSCORE=0.5
torchpack dist-run -np 8 python tools/test.py   --eval map
