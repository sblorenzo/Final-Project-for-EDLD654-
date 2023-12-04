{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "f7649d12",
   "metadata": {
    "papermill": {
     "duration": 0.003972,
     "end_time": "2023-12-04T23:34:37.445587",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.441615",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<div align=\"center\">\n",
    "\n",
    "#     Predicting Real-Life Disasters on Twitter Through Data Modeling"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ceab7cdf",
   "metadata": {
    "papermill": {
     "duration": 0.003299,
     "end_time": "2023-12-04T23:34:37.452259",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.448960",
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
   "id": "d1356c55",
   "metadata": {
    "papermill": {
     "duration": 0.003166,
     "end_time": "2023-12-04T23:34:37.458681",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.455515",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Reproducibility Note:** Please use this [link](https://github.com/sblorenzo/Final-Project-for-EDLD654-) to view the GitHub repopsitory. All codes used for this report can be found in the **r-code.r file** within the **R Branch**. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "23c0704f",
   "metadata": {
    "papermill": {
     "duration": 0.0033,
     "end_time": "2023-12-04T23:34:37.465551",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.462251",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Introduction**\n",
    "\n",
    "Since the beginning of humankind, civilizations across the globe have accumulated a perpetual rolodex of disasterous events – from conflicts to environmental disasters to virus outbreaks (Roos, 2022). For instance, in 2022, the History Channel released an online article that outlined some of the most monumental crises from over the past century, aptly titled “The Deadliest Events in US History” (Roos). The list includes warfare (i.e., the U.S. Civil War, World War I, World War II, the Vietnam War, and the Korean War), acts of terrorism (i.e., 9/11), natural disasters (i.e., the 1900 Galvestone hurricane and the 1906 San Francisco earthquake and fire), and health crises (i.e., the 1918 flu pandemic, the HIV/AID epidemic, and the COVID-19 pandemic). Given the broad spectrum of categories and increasing advancements in technology, the ways in which modern communication channels can enhance the spread of information about disasterous occurrences are seemingly insurmountable.  As current events continue to redefine societal norms across the globe, digital culture remains as the cornerstone for contemporary social interactions and information dissemination. Social media in particular has become a prime tool for discussing disasters in the form of digital narratives.\n",
    "\n",
    "Humans are instinctively drawn to narratives because story structures help organize experiences and document significant events. Stories enable people to live vicariously through narratives and consider the concepts being addressed. One popular form of narration is the act of micro-blogging, a mode of communication composed of user-generated posts which can be dispersed throughout the internet via internal messaging features and other technological tools, such as smartphones/devices, email, and online publications. (Java et al., 2007)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2190a3fc",
   "metadata": {
    "papermill": {
     "duration": 0.00321,
     "end_time": "2023-12-04T23:34:37.471950",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.468740",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Background***\n",
    "\n",
    "Since its founding in 2006, Twitter (now X) hailed as the premier microblogging source for its digital community and as of 2020, the platform's global network amassed more than 409 million users (“Forecast of the number of Twitter users,” 2021). Over the past decade, content on Twitter has transformed and adapted in response to current events and matters of public interest, particularly those related to disasters around the globe and political and social affairs. Information consumption and distribution continues to prevail as a primary motivator for Twitter usage, especially among Americans (Mitchell et al., 2021), along with utilizing the platform as an online communication blog (or web log) for sharing and distributing personal point of views. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "80853b15",
   "metadata": {
    "papermill": {
     "duration": 0.003176,
     "end_time": "2023-12-04T23:34:37.478313",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.475137",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Research Problem***\n",
    "\n",
    "As mentioned, Twitter has become a key communication tool for important events, including disasters. The pervasiveness of web-based smartphone application offers people a platform to announce an emergency they are witnessing in real-time. Due to this capability, more entities are increasingly becoming interested in monitoring Twitter to garner and provide life-saving information and keeping disaster relief organizations and news agencies abreast of emergency situations. However, it is difficult to know for certain whether a tweet is actually announcing a disaster or if its context are rooted in something unrelated (e.g., a tweet with the word \"ablaze\" could be meant metaphorically rather than to depict an active fire). So then, how could invested agencies get a better sense of when a tweet is disasters are actually occuring?\n",
    "\n",
    "Through this report, my goal is to develop a machine learning model that predicts which Tweets are about real disasters and which are not. Through data complied by Howard et al. (2019) and produced as a [Natural Language Processing competition](https://www.kaggle.com/competitions/nlp-getting-started/overview) on Kaggle, I examined 10,000 hand-classified disaster tweets to create four predictive models and determine which is the best to mitigate the research problem at hand.\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "435d2916",
   "metadata": {
    "papermill": {
     "duration": 0.003187,
     "end_time": "2023-12-04T23:34:37.484740",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.481553",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Description of Data**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c7eeaf77",
   "metadata": {
    "papermill": {
     "duration": 0.003158,
     "end_time": "2023-12-04T23:34:37.491106",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.487948",
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
   "id": "5d8cab18",
   "metadata": {
    "papermill": {
     "duration": 0.003258,
     "end_time": "2023-12-04T23:34:37.497532",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.494274",
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
   "id": "9178eba2",
   "metadata": {
    "papermill": {
     "duration": 0.003183,
     "end_time": "2023-12-04T23:34:37.503896",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.500713",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Model 1:***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "80ad65d5",
   "metadata": {
    "papermill": {
     "duration": 0.003173,
     "end_time": "2023-12-04T23:34:37.510272",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.507099",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Model 2:***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f61f05d8",
   "metadata": {
    "papermill": {
     "duration": 0.00326,
     "end_time": "2023-12-04T23:34:37.516730",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.513470",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Model 3:***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4cd43525",
   "metadata": {
    "papermill": {
     "duration": 0.003902,
     "end_time": "2023-12-04T23:34:37.524179",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.520277",
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
   "id": "f0a8a6fa",
   "metadata": {
    "papermill": {
     "duration": 0.003171,
     "end_time": "2023-12-04T23:34:37.530569",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.527398",
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
   "id": "12356a59",
   "metadata": {
    "papermill": {
     "duration": 0.003225,
     "end_time": "2023-12-04T23:34:37.536979",
     "exception": false,
     "start_time": "2023-12-04T23:34:37.533754",
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
   "duration": 3.051772,
   "end_time": "2023-12-04T23:34:37.658595",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-12-04T23:34:34.606823",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
