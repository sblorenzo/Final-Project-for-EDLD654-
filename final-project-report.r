{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "d4d09e56",
   "metadata": {
    "papermill": {
     "duration": 0.003963,
     "end_time": "2023-12-04T21:15:23.308938",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.304975",
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
   "id": "5a55038b",
   "metadata": {
    "papermill": {
     "duration": 0.003301,
     "end_time": "2023-12-04T21:15:23.315666",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.312365",
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
   "id": "c6d3d130",
   "metadata": {
    "papermill": {
     "duration": 0.003133,
     "end_time": "2023-12-04T21:15:23.321950",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.318817",
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
   "id": "4d9d71fa",
   "metadata": {
    "papermill": {
     "duration": 0.003082,
     "end_time": "2023-12-04T21:15:23.328247",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.325165",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Introduction**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bfbf00e7",
   "metadata": {
    "papermill": {
     "duration": 0.003232,
     "end_time": "2023-12-04T21:15:23.334654",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.331422",
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
   "id": "8ce5dc62",
   "metadata": {
    "papermill": {
     "duration": 0.003128,
     "end_time": "2023-12-04T21:15:23.340921",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.337793",
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
   "id": "d817cb44",
   "metadata": {
    "papermill": {
     "duration": 0.003062,
     "end_time": "2023-12-04T21:15:23.347258",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.344196",
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
   "id": "15364b6b",
   "metadata": {
    "papermill": {
     "duration": 0.003204,
     "end_time": "2023-12-04T21:15:23.353564",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.350360",
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
   "id": "d3194d2a",
   "metadata": {
    "papermill": {
     "duration": 0.003388,
     "end_time": "2023-12-04T21:15:23.360089",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.356701",
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
   "id": "b93a103f",
   "metadata": {
    "papermill": {
     "duration": 0.003172,
     "end_time": "2023-12-04T21:15:23.366487",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.363315",
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
   "id": "49b2bff2",
   "metadata": {
    "papermill": {
     "duration": 0.00321,
     "end_time": "2023-12-04T21:15:23.373094",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.369884",
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
   "id": "df9da285",
   "metadata": {
    "papermill": {
     "duration": 0.003182,
     "end_time": "2023-12-04T21:15:23.379390",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.376208",
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
   "id": "960782e7",
   "metadata": {
    "papermill": {
     "duration": 0.003096,
     "end_time": "2023-12-04T21:15:23.385658",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.382562",
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
   "id": "9722f9a6",
   "metadata": {
    "papermill": {
     "duration": 0.003124,
     "end_time": "2023-12-04T21:15:23.391874",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.388750",
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
   "id": "6d7239e9",
   "metadata": {
    "papermill": {
     "duration": 0.003348,
     "end_time": "2023-12-04T21:15:23.398430",
     "exception": false,
     "start_time": "2023-12-04T21:15:23.395082",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**References**\n",
    "\n",
    "Addison Howard, devrishi, Phil Culliton, Yufeng Guo. (2019). Natural Language Processing with Disaster Tweets. *Kaggle*. \n",
    "    https://kaggle.com/competitions/nlp-getting-started.\n",
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
   "duration": 3.363746,
   "end_time": "2023-12-04T21:15:23.522749",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-12-04T21:15:20.159003",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
