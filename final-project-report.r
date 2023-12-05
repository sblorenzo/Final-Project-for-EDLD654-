{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "26c38725",
   "metadata": {
    "papermill": {
     "duration": 0.004028,
     "end_time": "2023-12-05T01:37:30.005955",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.001927",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<div align=\"center\">\n",
    "\n",
    "#     Predicting Real-Life Disasters on Twitter Through Machine Learning"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d4361e41",
   "metadata": {
    "papermill": {
     "duration": 0.003277,
     "end_time": "2023-12-05T01:37:30.012611",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.009334",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<div align=\"center\">Samantha Lorenzo\n",
    "<div align=\"center\">EDLD654 Machine Learning for Educational Data Science\n",
    "<div align=\"center\">Final Project Report\n",
    "<div align=\"center\">December 6, 2023"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "22aeb9e1",
   "metadata": {
    "papermill": {
     "duration": 0.003165,
     "end_time": "2023-12-05T01:37:30.019100",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.015935",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Reproducibility Note:** Please use this [link](https://github.com/sblorenzo/Final-Project-for-EDLD654-) to view the GitHub repopsitory. Instructions on how to maneuver throughout the repository are found in the **README.md** file within the **Main Branch**. All codes used for this final project report can be found in the **r-code.r** file within the **R Branch** or throung the **R Code** [Kaggle notebook](https://www.kaggle.com/code/samanthalorenzo/r-code). All data files used for this final project report can be found within the **Data Branch** of the GitHub repository."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7336cc28",
   "metadata": {
    "papermill": {
     "duration": 0.003597,
     "end_time": "2023-12-05T01:37:30.025960",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.022363",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Introduction**\n",
    "\n",
    "Since the beginning of humankind, civilizations across the globe have accumulated a perpetual rolodex of disasterous events – from conflicts to environmental disasters to virus outbreaks (Roos, 2022). For instance, in 2022, the History Channel released an online article that outlined some of the most monumental crises from over the past century, aptly titled “The Deadliest Events in US History” (Roos). The list includes warfare (i.e., the U.S. Civil War, World War I, World War II, the Vietnam War, and the Korean War), acts of terrorism (i.e., 9/11), natural disasters (i.e., the 1900 Galvestone hurricane and the 1906 San Francisco earthquake and fire), and health crises (i.e., the 1918 flu pandemic, the HIV/AID epidemic, and the COVID-19 pandemic). Given the broad spectrum of categories and increasing advancements in technology, the ways in which modern communication channels can enhance the spread of information about disasterous occurrences are seemingly insurmountable.  As current events continue to redefine societal norms across the globe, digital culture remains as the cornerstone for contemporary social interactions and information dissemination. Social media in particular has become a prime tool for discussing disasters in the form of digital narratives."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4e4fcbcd",
   "metadata": {
    "papermill": {
     "duration": 0.003185,
     "end_time": "2023-12-05T01:37:30.032349",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.029164",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Background***\n",
    "\n",
    "Humans are instinctively drawn to narratives because story structures help organize experiences and document significant events. Stories enable people to live vicariously through narratives and consider the concepts being addressed. One popular form of narration is the act of micro-blogging, a mode of communication composed of user-generated posts which can be dispersed throughout the internet via internal messaging features and other technological tools, such as smartphones/devices, email, and online publications (Java et al., 2007).\n",
    "\n",
    "Since its founding in 2006, Twitter (now X) has hailed as the premier microblogging source for its digital community and as of 2020, the platform's global network amassed more than 409 million users (“Forecast of the number of Twitter users,” 2021). Over the past decade, content on Twitter has transformed and adapted in response to current events and matters of public interest, particularly those related to disasters around the globe and political and social affairs. Information consumption and dispersion continue to prevail as primary motivators for Twitter usage, especially among Americans (Mitchell et al., 2021), along with utilizing the platform as an online communication blog (or web log) for sharing and distributing personal points of view. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e826c42b",
   "metadata": {
    "papermill": {
     "duration": 0.003197,
     "end_time": "2023-12-05T01:37:30.038747",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.035550",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Research Problem***\n",
    "\n",
    "As mentioned, Twitter has become a key communication tool for important events, including disasters. The pervasiveness of the web-based smartphone application offers people a platform to announce an emergency they are witnessing in real-time. Due to this capability, more entities are increasingly becoming interested in monitoring Twitter to garner and provide life-saving information and keep disaster relief organizations and news agencies abreast of emergency situations. However, it is difficult to know for certain whether a tweet is actually announcing a disaster or if its context are rooted in something unrelated (e.g., a tweet with the word \"ablaze\" could be meant metaphorically rather than to depict an active fire). So then, how can invested agencies get a better sense of when a tweet is referring to an actual disaster?\n",
    "\n",
    "Through this report, my goal is to develop a machine learning model that predicts which Tweets are about real-life disasters and which are not. Through data complied by Howard et al. (2019) and produced as a [Natural Language Processing competition](https://www.kaggle.com/competitions/nlp-getting-started/overview) on Kaggle, I examined 10,000 hand-classified disaster tweets to create a series of predictive models and determine which is the best to mitigate the research problem at hand.\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8be0417f",
   "metadata": {
    "papermill": {
     "duration": 0.003178,
     "end_time": "2023-12-05T01:37:30.045204",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.042026",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Description of Data**\n",
    "\n",
    "The overall data observed is comprised of three separate files: a sample submission, a test set, and a training set. Each sample in the train and test datasets encompass the *text* of a tweet, a *keyword* from each tweet, and each tweet's *location* of origin. In addition, the columns within the sets are organized as follows: **ID** (i.e., a unique identifier for each tweet), **Text** (i.e., the text of the tweet), **Location** (i.e., where in which the tweet was sent; some cells may be blank), **Keyword** (i.e., a particular word classifyer for the tweet; some cells may be blank), and **Target** (i.e., whether a tweet is about a real disaster or not; included in the training set only). In reference to the Target category, tweets that refer to a disaster are coded as **1** while those that do not refer to a disaster are coded as **0**.\n",
    "\n",
    "I began processing the data by importing the competition's provided \"Getting Started\" folder into Kaggle, which then read the sample submission, test set, and training set files. Next, I used the **finalfit package** to view descriptive statistics of the data through both continuous and categorical tables. Through this, I was able to see that there were no missing values.\n",
    "\n",
    "I then proceeded to load the **reticulate** and **sentence_transformer packages**. Using the **RoBERTa model** (available on Hugging Face) as my pre-trained language model, I was able to encode any text sequence up to 512 tokens as input and then return a numerical vector with a length of 768 that represent this text sequence. Afterwards, I was able to compute the text embeddings for reading tweets using the **Longformer model**.\n",
    "\n",
    "Next, I merged the embeddings with the main datasets, dropping the Text column since it was no longer needed after the embeddings were obtained. I then grouped the numeric and categorical variables together while leaving the ID and Target columns out of arrangement. \n",
    "\n",
    "Applying the **Recipe package**, I was able to declare my variables of interest to be used for modeling by assigning different roles (i.e., predictor, id, and outcome), as well as the processes to be applied. I then mixed the ingredients in the recipe by applying the **prep function** to the training data, which was then transformed into a new data set. Through this, the output object printed the number of variables for each assigned role (in this case, there is 1 outcome, 770 preductors, and 1 id). Then, in order to obtain a realistic measure of model performance, I split the data into two subsamples: training (**tweet_tr**; 6,090 tweets) and test (**tweet_te**; 1,523 tweets) datasets. Due to the relatively small sample size, I used an 80/20 split. The smaller test dataset will be used as a final hold-out set and the training dataset will be used to build my models. From here, I am able to use the **caret package** to build three preduction models."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "717560aa",
   "metadata": {
    "papermill": {
     "duration": 0.003207,
     "end_time": "2023-12-05T01:37:30.051605",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.048398",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Description of the Models**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0c7c9e4a",
   "metadata": {
    "papermill": {
     "duration": 0.003247,
     "end_time": "2023-12-05T01:37:30.058081",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.054834",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Data Visualization**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2744daf3",
   "metadata": {
    "papermill": {
     "duration": 0.003208,
     "end_time": "2023-12-05T01:37:30.064491",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.061283",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Model 1: Regular Regression***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "267d13a5",
   "metadata": {
    "papermill": {
     "duration": 0.003191,
     "end_time": "2023-12-05T01:37:30.070907",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.067716",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Model 2: Ridge Regression***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "832b497a",
   "metadata": {
    "papermill": {
     "duration": 0.003295,
     "end_time": "2023-12-05T01:37:30.077429",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.074134",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Model 3: Lasso Regression***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4baa86f5",
   "metadata": {
    "papermill": {
     "duration": 0.003538,
     "end_time": "2023-12-05T01:37:30.085105",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.081567",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Model Fit**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1fd846fc",
   "metadata": {
    "papermill": {
     "duration": 0.003282,
     "end_time": "2023-12-05T01:37:30.091653",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.088371",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Discussion/Conclusion**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "15f5d0ca",
   "metadata": {
    "papermill": {
     "duration": 0.003318,
     "end_time": "2023-12-05T01:37:30.098222",
     "exception": false,
     "start_time": "2023-12-05T01:37:30.094904",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**References**\n",
    "\n",
    "(2021). Forecast of the number of Twitter users in the World from 2017 to 2025. *Statista*. \n",
    "https://www.statista.com/forecasts/1146722/twitter-users-in-the-world.\n",
    "\n",
    "Howard, A., devrishi, Culliton, P., & Guo, Y. (2019). Natural Language Processing with Disaster Tweets. *Kaggle*. \n",
    "    https://kaggle.com/competitions/nlp-getting-started.\n",
    "\n",
    "Java, A., Song, X., Finin, T., & Tseng, B. (2007). Why we Twitter: Understanding microblogging \n",
    "usage and communities. *Lecture Notes in Computer Science*, 5439.\n",
    "\n",
    "Mitchell, A., Shearer, E., & Stocking, G. (2021). News on Twitter: Consumed by Most Users and \n",
    "Trusted by Many. *Pew Research*. https://www.pewresearch.org/journalism/2021/11/15/news-on-twitter-consumed-by-most-users-and-trusted-by-many/.\n",
    "\n",
    "Roos, D. (2022). The Deadliest Events in US History. *History Channel*.\n",
    "    "
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "gpu",
   "dataSources": [],
   "isGpuEnabled": true,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 2.988069,
   "end_time": "2023-12-05T01:37:30.220049",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-12-05T01:37:27.231980",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
