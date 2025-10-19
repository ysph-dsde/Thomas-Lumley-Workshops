
# Workshops by Guest Speaker Professor Thomas Lumley

## About The Coffee, Cookie and Coding $\left(C^3\right)$ Workshops

Yale's Public Health Data Science and Data Equity (DSDE) team created this workshop series for Public Health and Biostatistics masters-level students at Yale. They are designed to help learners effectively leverage computational tools and analytical methods in their educational and professional endeavors. You can find out more about past and upcoming tutorials on our YouTube (coming soon) and [website](https://ysph.yale.edu/public-health-research-and-practice/research-centers-and-initiatives/public-health-data-science-and-data-equity/events/).


## About the Workshops

Professor Thomas Lumley hosted two workshops as a guest speaker in our $C^3$ workshop series.

**Workshop Title:** &nbsp; Choosing good subsamples for measuring new variables 

**Date:** &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp; Monday, February $3^{\text{rd}}$, 2025

Researchers often want to add more measurements to an existing database. These might be new assays on stored specimens, or coding of free-text responses, or validation of EHR data against clinical notes. It is expensive to measure the new variables on everyone, so subsampling is attractive. It is possible to do much better than simple random sampling when measuring additional data: any information you already have can be used to identify the most informative records to measure. It's also possible to recover a lot of information from the records that are not chosen in the subsample. Software already exists in R to support most analyses you would want to do of the subsampled data.


**Workshop Title:** &nbsp; Analyzing larger data in R

**Date:** &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp; Tuesday, February $4^{\text{th}}$, 2025

Even with growing computer power, researchers sometimes want to work with datasets that are much bigger than computer memory. The interfaces to allow selection, summarization, and aggregation of very large datasets from R are increasingly transparent and easy to set up. I will demonstrate simple analysis of large datasets in R. I will also show how some more complicated analyses can be partitioned between R and a database to exploit the advantages of both systems. I will primarily use duckdb, but I will refer to other large-data interfaces.

## About Repository

This is the only repository associated with both workshops. It contains all of the relevant code, the data sets, and a PDF of the slide decks that were used in the workshops.

### Overview Of Contents

- **Slide Decks:** `Choosing good subsamples_Slide Deck.pdf` and `Analyzing larger data in R_Slide Deck.pdf`
- **Code associated with the "Analyzing larger data in R" workshop:** `parquet-query.R`, `duckreg.R`, and `censusduck.R`

## About Professor Thomas Lumley

[Thomas Lumley](https://profiles.auckland.ac.nz/t-lumley) is a Professor in the Department of Statistics at the University of Auckland. His research interests are in statistical methodology and data analysis, with a focus on areas such as epidemiology, bioinformatics, and complex surveys. He has a particular interest in developing statistical models for health data and in improving the use of statistical methods for public health. Lumley has contributed significantly to statistical software development and is known for his work in statistical computing. He has also been involved in teaching and mentoring students in advanced statistical techniques. His work bridges the gap between theory and practical applications in the analysis of complex datasets.
