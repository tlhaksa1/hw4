<<dd_version: 2>>     
<<dd_include: header.txt>>

# STATA Programming II 
## Homework 4 

### Tenzin Lhaksampa


**Methods:** 
We initialized our dataset with 30 observations. We then create an age variable with a mean of 57 years and a standard deviation of 15 years. Then, we generated a normal distribution and a t-distribution. Lastly, we visualized the age distribution among the 30 observations using the simulated normal distribution, simulated t-distribution, and theoretical normal distribution. 
   

```
<<dd_do:nooutput>>
// STATA II HW 4
// Tenzin Lhaksampa

// Clear previous data
cls
clear	 

// Initialize your dataset with 30 observations using the command
set obs 30

// Create an age variable with a mean of 57 years and a standard deviation of 15  
gen age = (rnormal() * 15) + 57 // normal distribution
gen age_t = (rt(_N) * 15) + 57 // t-distribution

// Visualize the distribution of age among the observations
hist age, ///
   fcolor(orange%40) /// simulated normal 
   normal /// theoretical normal
   addplot(hist age_t, fcolor(midblue%50)) /// simulated t-distribution 
   legend(on ///
      lab(1 "Sampled from Normal") ///
	  lab(2 "Theoretical Normal") ///
	  lab(3 "Sampled from t-distribution") ///
	  ) 
	 	  
// Save graph as PNG 
graph export age_histogram.png, replace
<</dd_do>>
```
**Note:** 
The mathematical representation of a normal distrition of age: 
$$
\text{Age, years} \sim \mathcal{N}(\mu=57,\ \sigma^{2}=225)
$$


<<dd_graph>>



```

```
<<dd_do>>
display c(N) 
display c(k)  
list in 1/5 
<</dd_do>>
```


```
**Results:** 
We used STATA 18.0 to analyze the data. The distribution of age varies each time the STATA code is run. Among the <<dd_display: c(N)>> observations, there were <<dd_display: c(k) >> variables in the dataset. The table above presents the simulated normal and t distributions of age. 


Footnote: The results are based on simulated data.
