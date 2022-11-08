on the root folder, run the command lines of visualize.sh expectively.
then run the following commands under the folder of root:


# for detection tasks run the following
MASTER_HOST=localhost:1331 python tools/visualize.py ${CONFIG} --checkpoint ${CHECKPOINT} --mode ${MODE} --out-dir ${OUTDIR} --bbox-score ${BBOXSCORE}

# for segementation task run the following
MASTER_HOST=localhost:1331 python tools/visualize.py ${CONFIG} --checkpoint ${CHECKPOINT} --out-dir ${OUTDIR} --map-score ${MAPSCORE}
