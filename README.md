**A Study on Identified Factors that Affect Student Academic Performance using Data Mining Techniques**


**Problem Introduction:**
- High rates of student failure in secondary level in science and linguistic classes are a common problem worldwide. 

- The pass and completion rates in Portuguese secondary schools are significantly below the average of European countries. 

- According to OECD studies, Portugal has a high proportion of students who leave school early at 40%, which is much higher than the OECD average of 15%. 


 *OECD: Organization for economic Co-operation and development.*

**Project Question:**

- What are the factors that affect Portuguese secondary school students' performance in Mathematics and Portuguese (language)? 



**Introduction:**

Education has a paramount role in the development and progress of the countries. It enhances the ability to understand all human right and responsibilities. Longitudinal data appear in education with repeated measurements that study the variation within and among student grades of student performance. This project applies machine learning techniques to forecast student dropout in Portugal. Furthermore, to identify the factors that are associated with student and their environment that may affect their performance to help students identify their weakness and strengths.

**Dataset Description**

This dataset is based on a study of data collected during the 2005-2006 school year from two public schools, from the Alentejo region of Portugal . The dataset was prepared from the UCI Machine Learning Repository. The data was integrated into two datasets related to Mathematics (with 395 examples) and the Portuguese language (649 records) classes. The dataset involves 33 attributes such as past performance, socio-demographics, family and student related features. During the school year student progress is assessed at two separate periods and the final grade.


**EDA:**

**The density plot of G2 and G3 columns:**

![image](https://user-images.githubusercontent.com/93243958/144902933-b0697820-7187-431f-abc5-c5f7e76e3de2.png)

There are students with a zero grade, which can be considered a missing value in both datasets.



**Imbalanced dataset plot of the Portuguese dataset:**
![image](https://user-images.githubusercontent.com/93243958/144898643-88011f25-8002-41ba-8b3e-fce68bf991c9.png)

- It has been noted there are an unequal number of instances for each class where the number of failed students is 85, which is much less than the number of successful students at (564).

**Imbalanced dataset plot of the mathematics dataset:**

![image](https://user-images.githubusercontent.com/93243958/144898757-034215ab-6275-438f-b188-4377e672c09f.png)

- It was observed there is an unequal class distribution in the mathematics dataset. The number of students who failed the exams was 92, while the number of passing students was 303. 


**Correlation Matrix:**

![image](https://user-images.githubusercontent.com/93243958/144898943-501dbf00-4cf8-4fad-babe-14f8716a2208.png)

**Data Pre-Processing**
- The nominal and binary variables have been encoded using one hot encoding. 

- The students with a zero grade in all semesters will be considered a missing value. The missing values will be replaced with median values from each column.

- For a linear mixed model, the two datasets were combined to study the variation within student grades, the grades will be treated as a repeated measurement and put in a stacked format. 

- Handling longitudinal data “repeated measurement’:

![image](https://user-images.githubusercontent.com/93243958/144899274-1b01c5dc-2b4e-42e3-95d1-62bc59a9553a.png)


-  The pass and fail state are recorded as 1 with grades equal to and greater than 10, and recorded as 0 when the grades are less than 10. 

- To tune the models, a list of hyper-parameter values was randomly selected using a random search approach with cross validation. 



**Feature Selection:**

![image](https://user-images.githubusercontent.com/93243958/144896061-a04b7600-f032-464a-acb9-6891569071cc.png)

-33 features modelled.

-FAMD  used to find the significant feature.

-It observed that the demographic and family-related feature have a low contribution to the prediction of student performance.



**Modelling:**

Several algorithms used to predict the student’s dropout status if whether they interested in continuing their study or dropping outs.  Logistic Regression, XGboost, Decision Tree, Support Vector Machine, Naïve Bayes and Random Forest were used in a classification and regression experiment. The mixed linear model was used to study the variation among and within student grades. Furthermore, SMOTE technique was used in the classification model to deal with imbalanced datasets in both subjects. The Kfold cross-validation was used to avoid the overfitting problem. 

**Results:**


![image](https://user-images.githubusercontent.com/93243958/144896286-7f691dbb-cd5c-4dab-9e0f-151e52ad9e2a.png)

- In regression experiment, XGBoost regressor was the best model among others in which achieves a 0.9 and 1.062, respectively.SVR used a radial basis function kernel in the implementation. In the decision tree and random forest algorithm, Gini criteria was used to determine the quality of a split. For XGBoost, the number of estimators was 100. The model was evaluated using k-fold cross validation

- The mixed linear model that has been applied on both subjects and the RMSE value was 1.103. 


- In the Portuguese dataset, the best BIC value obtained by Naïve Bayes whereas decision tree regressor has the lowest AIC compared to the alternative. In mathematics dataset, the best AIC and BIC was for Gaussian Naïve Bayes algorithm with 67.366 and 1467.008. 



![image](https://user-images.githubusercontent.com/93243958/144897677-50c8f0e4-311f-4042-9ed4-9ec1404d967c.png)

*Figure 1.1.: The ROC curve of Portuguese dataset.*     


![image](https://user-images.githubusercontent.com/93243958/144897760-f2424b49-a964-4c3d-b83c-0ba78137d8a3.png)


*Figure 1.2: The ROC curve of Mathematics dataset.*


- In a classification experiment, SVM and logistic regression obtained the highest accuracy compared to other models and were a good choice for predicting student drop out in both datasets of the present study.
- Results showed that SVM achieved highest F1-score of 0.969 relative to the alternatives. 
- In Portuguese dataset, the SVM has the highest ROC value while in mathematics dataset the decision tree obtains the highest ROC value among other algorithms.


**Conclusion:**

Predicting students’ performance can be a difficult task because it is a multifactor problem. To overcome these problems, the DM algorithm and approach were used in this research to predict student dropout and explore the effect of demographic variables. Thus would provide meaningful information to guide coordinator, teacher, and manager when making decision concerning the school year and course offered. The FAMD showed that the demographic variable and family related has a low variance in explaining the variation contained in data. A mixed linear model used to study the variation within and between student grades. SMOTE technique and the use of hyper parameter tuning achieved systematically better results than the previous finding. As an attempt to improve the models, ensemble techniques such as XGBoost were performed. 

- This means the demographic and family related
features have a low contribution to the prediction of student performance.

**Improvment:**

In the future, I would like to obtain more data about an undergraduate student from multiple universities and attempt a deep learning algorithm to get a more precise output. I would also employ different models to elective courses in college to recommend courses to the students. Furthermore, applying prediction models in online courses to predict student performance in an online learning environment.


**Blog link :** https://medium.com/@samaher.fwz/background-high-rates-of-student-failure-in-secondary-level-in-science-and-linguistic-classes-89fdd6b026b7



















