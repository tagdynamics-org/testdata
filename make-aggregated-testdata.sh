set -eux

# make-aggregated-testdata.sh /path/to/input.jsonl /path/to/output/dir/

TESTDATA_REPO=`pwd`
INPUT_DATA=$TESTDATA_REPO/2-extracted-osm-metadata.jsonl
OUTPUT_DIR=$TESTDATA_REPO/3-aggregates/

# Will fail if directory exists.
mkdir $OUTPUT_DIR

git clone --recurse-submodules git@github.com:tagdynamics-org/osm-tag-aggregator.git
cd osm-tag-aggregator
gradle wrapper
bash compute-all.sh $INPUT_DATA $OUTPUT_DIR

