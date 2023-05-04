# Course Final Project :: CS301

**Due** : Thursday, 4th May 2023, 7:00pm (Note: Strict deadline, no extensions are possible)

## Names of all members

Brenden Gray
Nic Ingerson
Add Your Name Here

## Group Name

grays-team

## Dataset reference

http://eprints.lse.ac.uk/47487/1/World%20happiness%20report%28lsero%29.pdf

https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1796590

## In clear and meaningful language, discuss your three (foundational) questions.

## What motivation is there behind these questions?

For each question, be sure to describe and discuss; the method, the code, the results and the conclusions of your group. This work will take about the same time as two labs.

## Q1 GDP per capita vs. Happiness Index Score: Method, Code and Conclusion

Method: In order to see a summary of the p-values and adjusted R-squared values, we decided to run a linear regression model with all happiness index scores over all values. Here is the code:

```r
model <- lm( Ladder.score ~ Logged.GDP.per.capita + Social.support + Healthy.life.expectancy + Freedom.to.make.life.choices + Generosity + Perceptions.of.corruption, data=data)
summary(model)
```

Code:

We chose to graph a comparison of all countries within the dataset as well as a selection of countries based on happiness index scores to see how other variables may affect them.

```r
# All countries

ggplot(data, aes(x = Logged.GDP.per.capita, y = Ladder.score)) +
  geom_point(color = "blue") +
  geom_text(aes(label = Country.name), size = 3, hjust = 0, vjust = 0) +
  xlab("Logged GDP per capita") +
  ylab("Happiness index") +
  ggtitle("Correlation between GDP per capita and the happiness index score (all countries)")

# Few countries

some_countries <- data[c(1,5,9,15,30,36,47,64,83,100,110,126,129,137),]

ggplot(some_countries, aes(x = Logged.GDP.per.capita, y = Ladder.score)) +
  geom_point(color = "red") +
  geom_text(aes(label = Country.name), hjust = 0, vjust = 0) +
  xlab("Logged GDP per capita") +
  ylab("Happiness index") +
  ggtitle("Correlation between GDP per capita and the happiness index score (few countries)")
```

Conclusions:

We found that the p-value and adjusted R-square value as well as the graphs shows that GDP per capita is correlated to the happiness index score of a country.

## Q2, Method, Code and Conclusion

TODO

## Q3, Method, Code and Conclusion

TODO

## Q4, Method, Code and Conclusion?

TODO

---

(Did you remember to place the names of yourself and your group members above?)
