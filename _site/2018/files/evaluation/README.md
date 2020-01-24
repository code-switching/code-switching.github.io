## Evaluation

We will use F-1 metric to measure the performance of your system. In addition to the 
standard entity F-1 metric, we include the Surface From F-1 metric introduced in WNUT-2017 
([Derczynski et al., 2017](https://aclanthology.info/papers/W17-4418/w17-4418)).

The data files that we provide do not follow the CoNLL format; they contain more columns such as
the tweet id, user id, start and end of tokens, the token and the entity type. Those are needed
to retrieve and tokenize the data directly from Twitter. However, for the evaluation script, we just
need the last two columns in CoNLL format. We provide a basic Python script for that:

```
$ python conll_formatter.py calcs_dataset.tsv > calcs_dataset.conll
```

Using the CoNLL format for your predictions, you can run the evaluation bash script as follows:

```
$ ./eval.sh sample_test.conll sample_preds.conll 
```

The `eval.sh` script wraps the `wnuteval.py` evaluator. The WNUT-2017 will provide the scores 
of each of the entity types based on precision, recall, and F-1 scores for both standard 
entity and surface form measures. Additionally, you will be able to see the overall score 
for both entities and surface forms. 