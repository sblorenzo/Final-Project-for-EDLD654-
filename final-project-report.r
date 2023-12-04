{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "1c9329a5",
   "metadata": {
    "papermill": {
     "duration": 0.004347,
     "end_time": "2023-12-04T23:46:24.618627",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.614280",
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
   "id": "2c905756",
   "metadata": {
    "papermill": {
     "duration": 0.003304,
     "end_time": "2023-12-04T23:46:24.625504",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.622200",
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
   "id": "f98bb0f2",
   "metadata": {
    "papermill": {
     "duration": 0.00332,
     "end_time": "2023-12-04T23:46:24.632281",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.628961",
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
   "id": "a42a2049",
   "metadata": {
    "papermill": {
     "duration": 0.003529,
     "end_time": "2023-12-04T23:46:24.639190",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.635661",
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
   "id": "cf56e868",
   "metadata": {
    "papermill": {
     "duration": 0.003353,
     "end_time": "2023-12-04T23:46:24.645891",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.642538",
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
   "id": "4a6140e0",
   "metadata": {
    "papermill": {
     "duration": 0.003347,
     "end_time": "2023-12-04T23:46:24.652824",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.649477",
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
   "id": "ae7e2563",
   "metadata": {
    "papermill": {
     "duration": 0.003623,
     "end_time": "2023-12-04T23:46:24.659750",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.656127",
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
   "id": "a0f50671",
   "metadata": {
    "papermill": {
     "duration": 0.003332,
     "end_time": "2023-12-04T23:46:24.666472",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.663140",
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
   "id": "89162620",
   "metadata": {
    "papermill": {
     "duration": 0.003344,
     "end_time": "2023-12-04T23:46:24.673189",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.669845",
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
   "id": "af53aa70",
   "metadata": {
    "papermill": {
     "duration": 0.003597,
     "end_time": "2023-12-04T23:46:24.680400",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.676803",
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
   "id": "31597b93",
   "metadata": {
    "papermill": {
     "duration": 0.003425,
     "end_time": "2023-12-04T23:46:24.687211",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.683786",
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
   "id": "78da9713",
   "metadata": {
    "papermill": {
     "duration": 0.003266,
     "end_time": "2023-12-04T23:46:24.693874",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.690608",
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
   "id": "ec55e3e5",
   "metadata": {
    "papermill": {
     "duration": 0.00352,
     "end_time": "2023-12-04T23:46:24.700829",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.697309",
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
   "id": "7946b7fd",
   "metadata": {
    "papermill": {
     "duration": 0.00329,
     "end_time": "2023-12-04T23:46:24.707498",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.704208",
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
   "id": "58ff8f21",
   "metadata": {
    "papermill": {
     "duration": 0.003272,
     "end_time": "2023-12-04T23:46:24.714180",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.710908",
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
   "id": "858c1418",
   "metadata": {
    "papermill": {
     "duration": 0.003358,
     "end_time": "2023-12-04T23:46:24.721201",
     "exception": false,
     "start_time": "2023-12-04T23:46:24.717843",
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
   "duration": 3.133294,
   "end_time": "2023-12-04T23:46:24.844138",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-12-04T23:46:21.710844",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
