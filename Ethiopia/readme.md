The Ethiopia folder includes the following data:

* `eth_nutrition.csv` - Detailed macro and micro-nutrient intake. 
* `eth_nutrition_codebook.csv` - The list of nutrition variables, including codes, labels, and units.

A unique household id can be build by combining variables `cq12`, `cq13`, `cq14`, `cq15`, `cq16`, `cq17`, `cq18`.

* `eth_anthropometry.csv` - Child anthropometrics data.
* `eth_anthropometry_codebook.csv` - The list of anthropometry variables, including codes, labels, and units.

The observation need to be weighted by the household sampling weight:

`mean(var)=sum(var*weight)/sum(weight)`

The nutrition data is collected from the 2010/11 Ethiopian Households Consumption and Expenditure Survey (HCE). The HCE covers all rural and urban parts of the country except the non-sedentary population of three zones of Afar and six zones of Somali -- 28,000 households representing more than 76 million Ethiopians.

The anthropometry data is collected from the 2011 Ethiopia Rural Socioeconomic Survey
(ERSS).
