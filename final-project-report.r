{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "a03c339a",
   "metadata": {
    "papermill": {
     "duration": 0.004212,
     "end_time": "2023-12-04T23:47:49.040816",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.036604",
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
   "id": "6410d952",
   "metadata": {
    "papermill": {
     "duration": 0.003404,
     "end_time": "2023-12-04T23:47:49.047756",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.044352",
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
   "id": "de898643",
   "metadata": {
    "papermill": {
     "duration": 0.003369,
     "end_time": "2023-12-04T23:47:49.054463",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.051094",
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
   "id": "d1e2f005",
   "metadata": {
    "papermill": {
     "duration": 0.003311,
     "end_time": "2023-12-04T23:47:49.061100",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.057789",
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
   "id": "9c84eb1a",
   "metadata": {
    "papermill": {
     "duration": 0.003364,
     "end_time": "2023-12-04T23:47:49.067773",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.064409",
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
   "id": "bbf94820",
   "metadata": {
    "papermill": {
     "duration": 0.003294,
     "end_time": "2023-12-04T23:47:49.074450",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.071156",
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
   "id": "7bad26ff",
   "metadata": {
    "papermill": {
     "duration": 0.0033,
     "end_time": "2023-12-04T23:47:49.081071",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.077771",
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
   "id": "bbfdc8d2",
   "metadata": {
    "papermill": {
     "duration": 0.003411,
     "end_time": "2023-12-04T23:47:49.087808",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.084397",
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
   "id": "bbb762a4",
   "metadata": {
    "papermill": {
     "duration": 0.003299,
     "end_time": "2023-12-04T23:47:49.094418",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.091119",
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
   "id": "bef102f7",
   "metadata": {
    "papermill": {
     "duration": 0.003312,
     "end_time": "2023-12-04T23:47:49.101051",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.097739",
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
   "id": "a3295998",
   "metadata": {
    "papermill": {
     "duration": 0.003415,
     "end_time": "2023-12-04T23:47:49.107942",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.104527",
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
   "id": "8a267c19",
   "metadata": {
    "papermill": {
     "duration": 0.003327,
     "end_time": "2023-12-04T23:47:49.114665",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.111338",
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
   "id": "565dd24b",
   "metadata": {
    "papermill": {
     "duration": 0.003403,
     "end_time": "2023-12-04T23:47:49.121595",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.118192",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Model 4:***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "03d51802",
   "metadata": {
    "papermill": {
     "duration": 0.003412,
     "end_time": "2023-12-04T23:47:49.128416",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.125004",
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
   "id": "9eab17b1",
   "metadata": {
    "papermill": {
     "duration": 0.003373,
     "end_time": "2023-12-04T23:47:49.135222",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.131849",
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
   "id": "f9e4aaad",
   "metadata": {
    "papermill": {
     "duration": 0.003369,
     "end_time": "2023-12-04T23:47:49.142085",
     "exception": false,
     "start_time": "2023-12-04T23:47:49.138716",
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
   "duration": 3.184845,
   "end_time": "2023-12-04T23:47:49.267421",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-12-04T23:47:46.082576",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
