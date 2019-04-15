ludwig train -mdf model.yaml --data_csv yld.csv

ludwig predict -op -m results/experiment_run_2/model --data_csv yld.csv
