# testdata

Various (largish) test files for testing. These are stored in this separate repo so as not to bloat the actual code repos.

See repos linked below for further detail about these test files.

## Recreating the test files

## `1-synth-osm-data.xml`

Synthetic data similar to the OpenStreetMap full history data dump. Generated with [testdata-generator](https://github.com/tagdynamics-org/testdata-generator) as follows:

```bash
git clone git@github.com:tagdynamics-org/testdata-generator.git
cd testdata-generator
npm install
npm run create-test-data --output-file=../1-synth-osm-data.xml --nodes=7500
```

## `2-extracted-osm-metadata.jsonl`

Extracted metadata for tags `k1`, `k2`, `k3` from `1-synth-osm-data.xml`. The repo [osm-extract-tags](https://github.com/tagdynamics-org/osm-extract-tags) contains a test that ensures that metadata extracted from `1-synth-osm-data.xml` matches the cached file `2-extracted-osm-metadata.jsonl`.

Create as follows:
```bash
git clone git@github.com:tagdynamics-org/osm-extract-tags.git
cd osm-extract-tags
npm install
npm run tag-extract --tags=k1,k2,k3 --input-file=../1-synth-osm-data.xml --output-file=../2-extracted-osm-metadata.jsonl
cd ..
```
