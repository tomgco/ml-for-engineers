#!/usr/bin/env bash

trash predictions
ludwig predict --only_predictions --model_path "results/experiment_run_$1/model" --data_csv predict.csv -od predictions
mkdir gen/data

count=1
cat predict.csv | sed 1d | while read -r line; do
  echo "$line $count"
  TEXT=$(sed "${count}q;d" predictions/tags_predictions.csv | tr "," "\n")
  convert -fill red -pointsize 20 -draw "text 4,20 '$TEXT'" "$line" "gen/$line"
  (( count++ ))
done
trash predictions
