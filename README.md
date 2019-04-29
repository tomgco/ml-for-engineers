# Easy Machine Learning With Ludwig

> "Ludwig is a toolbox built on top of TensorFlow that allows to train and test deep learning models without the need to write code. http://uber.github.io/ludwig/"

## Associated Blog Post

- [Machine Learning for Developers](https://medium.com/yld-engineering-blog/machine-learning-for-developers-182a9903a118)

#### How to train

```bash
ludwig train -mdf model.yaml --data_csv yld.csv
```

#### How to predict

```bash
ludwig predict -m results/experiment_run_0/model --data_csv yld.csv
cat results_0/tags_predictions.csv
```

#### Prediction with text overlay on images

With `0` being the result folder number from the training run.

```bash
./predict.sh 0
```
