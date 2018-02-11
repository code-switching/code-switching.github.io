## Evaluation

We will use F-1 metric to measure the performance of your system. In addition to the 
standard entity F-1 metric, we include the Surface From F-1 metric introduced in WNUT-2017 
([Derczynski et al., 2017](https://aclanthology.info/papers/W17-4418/w17-4418)).

The data files that we provide do not follow the CoNLL format; they contain more columns such as
the tweet id, user id, start and end of tokens, the token and the entity type. Those are needed
to retrieve and tokenize the data directly from Twitter. However, we provide a bash script that 
will map your output predictions to the CoNLL format and execute the WNUT-2017 evaluation script.  

You can run the bash script as follows:

```
$ ./eval.sh sample_test.tsv sample_preds.tsv
```

Both input files contain the 6 columns mentioned before. The `sample_test.tsv` file contains the true
values of the tokens, whereas `sample_preds.tsv` contains the predictions of your system.

The WNUT-2017 will provide the scores of each of the entity types based on precision, recall,
and F-1 scores for both standard entity and surface form measures. Additionally, you will be able 
to see the overall score for both entities and surface forms. 

Finally, you can run directly the `wnuteval.py` script if you provide an input file in CoNLL format with
the first column being the token, the second one the true value, and the third one the prediction.