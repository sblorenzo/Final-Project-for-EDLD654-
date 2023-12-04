{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "eb3aabb8",
   "metadata": {
    "papermill": {
     "duration": 0.004604,
     "end_time": "2023-12-04T22:56:30.176534",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.171930",
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
   "id": "eff97f1f",
   "metadata": {
    "papermill": {
     "duration": 0.00333,
     "end_time": "2023-12-04T22:56:30.183482",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.180152",
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
   "id": "6caad6a6",
   "metadata": {
    "papermill": {
     "duration": 0.003133,
     "end_time": "2023-12-04T22:56:30.189795",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.186662",
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
   "id": "aeadc994",
   "metadata": {
    "papermill": {
     "duration": 0.00321,
     "end_time": "2023-12-04T22:56:30.196317",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.193107",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Introduction**\n",
    "\n",
    "Since the beginning of humankind, civilizations across the globe have accumulated a perpetual rolodex of disasterous events – from conflicts to environmental disasters to virus outbreaks (Roos, 2022). For instance, in 2022, the History Channel released an online article that outlined some of the most monumental crises from over the past century, aptly titled “The Deadliest Events in US History” (Roos). The list includes warfare (i.e., the U.S. Civil War, World War I, World War II, the Vietnam War, and the Korean War), acts of terrorism (i.e., 9/11), natural disasters (i.e., the 1900 Galvestone hurricane and the 1906 San Francisco earthquake and fire), and health crises (i.e., the 1918 flu pandemic, the HIV/AID epidemic, and the COVID-19 pandemic). Given the broad spectrum of categories and increasing advancements in technology, the ways in which modern communication channels can enhance the spread of information about disasterous occurrences are seemingly insurmountable.  As current events continue to redefine societal norms across the globe, digital culture remains as the cornerstone for contemporary social interactions and information dissemination. Social media in particular has become a prime tool for discussing disasters in the form of digital narratives.\n",
    "\n",
    "Humans are instinctively drawn to narratives because story structures help organize experiences and document significant events. Stories enable people to live vicariously through narratives and consider the concepts being addressed. One popular form of narration is the act of micro-blogging, a mode of communication composed of user-generated posts which can be dispersed throughout the internet via internal messaging features and other technological tools, such as smartphones/devices, email, and online publications. (Java et al., 2007). Since its founding in 2006, Twitter hailed as the premier microblogging source for its digital community and as of 2020, Twitter’s global network amassed more than 409 million users and is projected to increase to nearly 500 million users by 2025 (“Forecast of the number of Twitter users,” 2021). "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1f6cb24e",
   "metadata": {
    "papermill": {
     "duration": 0.003101,
     "end_time": "2023-12-04T22:56:30.202553",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.199452",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Background***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b7b3fc16",
   "metadata": {
    "papermill": {
     "duration": 0.003162,
     "end_time": "2023-12-04T22:56:30.208833",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.205671",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Research Problem***\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "68823dea",
   "metadata": {
    "papermill": {
     "duration": 0.003312,
     "end_time": "2023-12-04T22:56:30.215346",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.212034",
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
   "id": "780967ce",
   "metadata": {
    "papermill": {
     "duration": 0.003074,
     "end_time": "2023-12-04T22:56:30.221544",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.218470",
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
   "id": "43f34d49",
   "metadata": {
    "papermill": {
     "duration": 0.003205,
     "end_time": "2023-12-04T22:56:30.227891",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.224686",
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
   "id": "c6ddbbfa",
   "metadata": {
    "papermill": {
     "duration": 0.003316,
     "end_time": "2023-12-04T22:56:30.234321",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.231005",
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
   "id": "90f36b8b",
   "metadata": {
    "papermill": {
     "duration": 0.003143,
     "end_time": "2023-12-04T22:56:30.240607",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.237464",
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
   "id": "2ac7adae",
   "metadata": {
    "papermill": {
     "duration": 0.003185,
     "end_time": "2023-12-04T22:56:30.246960",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.243775",
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
   "id": "ab82774a",
   "metadata": {
    "papermill": {
     "duration": 0.003244,
     "end_time": "2023-12-04T22:56:30.253360",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.250116",
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
   "id": "c869b1ad",
   "metadata": {
    "papermill": {
     "duration": 0.003154,
     "end_time": "2023-12-04T22:56:30.259752",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.256598",
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
   "id": "82a9cdc9",
   "metadata": {
    "papermill": {
     "duration": 0.003194,
     "end_time": "2023-12-04T22:56:30.266113",
     "exception": false,
     "start_time": "2023-12-04T22:56:30.262919",
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
    "Addison Howard, devrishi, Phil Culliton, Yufeng Guo. (2019). Natural Language Processing with Disaster Tweets. *Kaggle*. \n",
    "    https://kaggle.com/competitions/nlp-getting-started.\n",
    "\n",
    "Java, A., Song, X., Finin, T., & Tseng, B. (2007). Why we Twitter: Understanding microblogging \n",
    "usage and communities. *Lecture Notes in Computer Science*, 5439.\n",
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
   "duration": 3.32002,
   "end_time": "2023-12-04T22:56:30.390900",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-12-04T22:56:27.070880",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
