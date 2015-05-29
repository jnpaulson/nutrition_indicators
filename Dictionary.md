# Dictionary of Health, Nutrition and Welfare Indicators

## Anthropometric measures

Body Mass Index (BMI)
: The BMI quantifies the amount of tissue mass (muscle, fat and bone) present in an individual and is computed as following:
    
    $$BMI=\frac{ weight (kg)}{height^2 (m^2)}$$
    
    Healthy values of BMI fall between **18.5** and **25**.

Weight for height score (WHZ), height for age score (HAZ), Weight for age score (WAZ) and related measures of malnutrition
: The three indicators WHZ, HAZ and WAZ compare different aspects of the anthropometric development of a particular child to the levels of the reference population and allow to define thresholds for malnourishment. Z-scores are computed as follows: 
 
    $$Zscore=\frac{observed value-median value of the reference population}{standard deviation value of the reference population}$$

    The WHO provides the following interpretation of the different indicators : 

	* Low WHZ: "Wasting or thinness indicates in most cases a recent and severe process of weight loss, which is often associated with acute starvation and/or severe disease. However, wasting may also be the result of a chronic unfavorable condition. Provided there is no severe food shortage, the prevalence of wasting is usually below 5%, even in poor countries."
    * Low HAZ: "Stunted growth reflects a process of failure to reach linear growth potential as a result of suboptimal health and/or nutritional conditions. On a population basis, high levels of stunting are associated with poor socioeconomic conditions and increased risk of frequent and early exposure to adverse conditions such as illness and/or inappropriate feeding practices."
    * Low WAZ: "Weight-for-age reflects body mass relative to chronological age. It is influenced by both the height of the child (height-for-age) and his or her weight (weight-for-height), and its composite nature makes interpretation complex."

| WASTING                      |                   |
|------------------------------+-------------------|
| Wasted child                 | WHZ <-2           |
| Moderately wasted child      | WHZ <-2 & WHZ >-3 |
| Severely wasted child        | WHZ <-3           |
|                              |                   |
| STUNTING                     |                   |
|------------------------------+-------------------|
| Stunted child                | HAZ <-2           |
| Moderately stunted child     | HAZ <-2 & HAZ >-3 |
| Severely stunted child       | HAZ <-3           |
|                              |                   |
| UNDERWEIGHT                  |                   |
|------------------------------+-------------------|
| Underweight child            | WAZ <-2           |
| Moderately underweight child | WAZ <-2 & WAZ >-3 |
| Severely underweight child   | WAZ <-3           |

## Nutrition indices 

Dietary Diversity Index (HDI)
: Calculates how many different food items were consumed over the week preceding the interview.

Household Dietary Diversity Score (HDDS)
: It categorizes every food item into 12 food groups and computes how many food groups were consumed by the household over the week preceding the interview. 

| Food Groups      |                      |                        |
|------------------+----------------------+------------------------|
| Cereals          | Roots and Tubers     | Vegetables             |
| Fruits           | Meat, poultry, offal | Eggs                   |
| Fish and seafood | Pulses/legumes/nuts  | Milk and milk products |
| Oil/fats         | Sugar/honey          | Miscellaneous.         |

Shannon Index 
: The Shannon index quantifies the uncertainty in predicting in which category one observation taken at random will fall into. The higher the number of categories the higher the uncertainty of prediction, and therefore the more diverse is the sample. In the context of nutrition, the categories correspond to the different macro nutrients and therefore the richest is the diet of an individual or household, the higher will be the Shannon index. 
    
    $$ Shannon=\sum_{i=1}^{N}p_i\ln{p_i} $$
    
    Where \p_i\ is the share of foods belonging to the \i-th\ type of nutrient in the individual or household consumption.

Simpson Index
: The Simpson index is a measure of degree of concentration and captures the probability that two observations taken at random belong to the same category.

    $$ Simpson=\sum_{i=1}^{N}p_i^2 $$
    Where \p_i\ is the share of foods belonging to the \i-th\ type of nutrient in the individual or household consumption. The value of the Simpson index always falls between 0 and 1. 

    Since we are interested in a measure of diversity, in our dataset we report the inverse of the Simpson index, which is computed as 1-Simpson. Therefore, the higher the Simpson index reported in the dataset, the more diverse is the diet of the individual. 

## Poverty indices 

Gini index
: The Gini coefficient measures inequality within a society by looking at the income distribution across its members. It can take values from 0 (perfect equality, everyone owns the same) to 100 (perfect inequality, one person possesses everything and all the others nothing). Most of the countries fall in the range between 25 and 55.

Poverty headcount ratio
: It is the most commonly used measure of poverty. It measures the share of the population falling below a defined poverty line, usually corresponding to 1.25, 2 or 2.5 USD of income per day.

Poverty Density
: It measures the average number of people living below the poverty line per squared kilometer. This indicator adds an additional spatial dimension to the poverty headcount ratio.

Poverty Gap and poverty severity
: The poverty gap index captures the depth of poverty (how far are the individuals from the poverty line), providing a more complete perspective with respect to the headcount ratio. The headcount ratio ignores the depth of poverty since someone living below the poverty line and becoming even poorer would leave the headcount value unchanged.  The poverty severity index aims at refining the measure even more by taking into account the inequality among the poor. 
    
    The poverty gap index is computed as following:
    $$ PG=\frac{1}{N}\sum_{j=1}^{q}(\frac{pl-y_i}{pl}) $$
    
    Where N is the total population, q is the number of poor, pl is the poverty line and y(i) is the income of each person living below the poverty line.
    
    The poverty severity index takes the square of the poverty gap index:
    $$ PS=PG^2 $$

**Important Note**

In order to make the household survey data representative of the entire population, when computing means each observation has to be weighted by its statistical representativeness. The formula for the weighted mean is the following:

$$ weighted.mean=\frac{\sum_{j=1}^{M}w_jx_j}{\sum_{j=1}^{M}w_j} $$

Where \M\ is the total number of observations in the dataset, \w\ is the weight and \x\ is the value of the variable of interest.

_Tip_: Weighted means in excel can be calculated as follows:

`weighted_mean_calories=SUMPRODUCT(calories_var, weight)/SUM(weight)`


