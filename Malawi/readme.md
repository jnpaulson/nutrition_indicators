The Malawi folder includes the following data: 

* `mwi_nutrition.csv` - Detailed macro and micro-nutrient intake. 
* `mwi_nutrition_codebook.csv` - The list of nutrition variables, including codes, labels, and units.
* `mwi_anthropometry.csv` - Child anthropometrics data.
* `mwi_anthropometry_codebook.csv` - The list of anthropometry variables, including codes, labels, and units.

The nutrition variables can be joined with the anthropometry variables by household id - hhid. 

The observation need to be weighted by the household sampling weight: `mean(var)=sum(var*weight)/sum(weight)`

The data is collected from Africa RISING baseline survey in Malawi (1,150 households in 2 districts).
