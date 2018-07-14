set -eux

TESTDATA_REPO=`pwd`
INPUT_DATA=$TESTDATA_REPO/2-extracted-osm-metadata.jsonl

# Will fail if directory exists. 
mkdir $TESTDATA_REPO/3-aggregates

git clone git@github.com:tagdynamics-org/osm-tag-aggregator.git
cd osm-tag-aggregator

gradle wrapper

bash launch.sh LIVE_REVCOUNTS        $INPUT_DATA $TESTDATA_REPO/3-aggregates/live-revcounts.jsonl
bash launch.sh TOTAL_REVCOUNTS       $INPUT_DATA $TESTDATA_REPO/3-aggregates/total-revcounts.jsonl
bash launch.sh TRANSITION_COUNTS     $INPUT_DATA $TESTDATA_REPO/3-aggregates/transition-counts.jsonl
bash launch.sh PER_DAY_DELTA_COUNTS  $INPUT_DATA $TESTDATA_REPO/3-aggregates/per-day-delta-counts.jsonl

