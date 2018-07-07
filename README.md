# testdata

Various (largish) test files for testing. These are stored in this separate repo so as not to bloat the actual code repos.

These files are used by:
 - [osm-streamer](https://github.com/tagdynamics-org/osm-streamer)

## Recreating the test files

## `1-synth-osm-data.xml`

Synthetic data similar to the OpenStreetMap full history data dump. Generated with [testdata-generator](https://github.com/tagdynamics-org/testdata-generator) as follows:

```bash
git clone git@github.com:tagdynamics-org/testdata-generator.git
cd testdata-generator
npm install
npm run create-test-data --output-file=../1-synth-osm-data.xml --nodes=7500
```


