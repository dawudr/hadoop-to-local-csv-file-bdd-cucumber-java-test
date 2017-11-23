This is source code for BDD tests for Hadoop with Cucumber

This will build a docker container with Ubuntu, Java, Hadoop, Gradle and copy the bdd feature files containing our test scenarios.


Build container:

```docker build -t dbb_test_hadoop .```

Run container:

```docker run -v `pwd`:/opt/bdd_test_hadoop dbb_test_hadoop```