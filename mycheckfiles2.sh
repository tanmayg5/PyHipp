
#!/bin/bash

LOG_DIR="/data/picasso/20181105"
echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "========================================"
echo "Start Times"
head -n 1 ${LOG_DIR}/r*.out

echo "========================================"
echo "End Times"
tail -n 5 ${LOG_DIR}/r*.out
