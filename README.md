
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

## Using this Repository

### Making a Clean-Break Copy

The repository needs to be copied into your personal GitHub for the workshop in a manner that will decouple its operations from this original repository. Please use one of the following two methods to do this.

**METHOD 1:** Copying Using GitHub Importer

**NOTE:** This method is not a Fork. You can learn more about GitHub Importer [here](https://docs.github.com/en/migrations/importing-source-code/using-github-importer/importing-a-repository-with-github-importer).

1. Under the "Repositories" tab of your personal GitHub page, select the "New" button in the top-right corner. This will start the process of starting a new repository.

2. At the top of the page is a hyperlink to import a repository. Open that link ([GitHub Importer](https://github.com/new/import)).

3. Paste the URL of this repository when prompted. No credentials are required for this action.

4. Adjust the GitHub account owner as needed and create the name for the new repository. We recommend initially setting the repository to Private.

5. Proceed with cloning the newly copied repository.

**METHOD 2:** Copying Using Terminal

These directions follow GitHub's [duplicating a repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/duplicating-a-repository) page.

1. [Create a new](https://github.com/new) GitHub repository ([Further documentation](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-new-repository)).
   
   **NOTE:** Do not use a template or include a description, README file, .gitignore, or license. Only adjust the GitHub account owner as needed and create the name for the new repository. We recommend initially setting the repository to Private.
   
2. Open Terminal.

3. Navigate to the file location you want to store the repository copy.
   ```
   cd "/file_location/"
   ```

4. Clone a bare copy of the repository.
   ```
   # using SSH
   git clone --bare git@github.com:ysph-dsde/Thomas-Lumley-Workshops.git
   
   # or using HTTPS
   git clone --bare https://github.com/ysph-dsde/Thomas-Lumley-Workshops.git
   ```
   
5. Open the project file.
   ```
   cd "Thomas-Lumley-Workshops.git"
   ```
   
6. Push a mirror of the cloned Git file to your newly created GitHub repository.
   ```
   # using SSH
   git push --mirror git@github.com:EXAMPLE-USER/NEW-REPOSITORY.git

   # or using HTTPS
   git push --mirror https://github.com/EXAMPLE-USER/NEW-REPOSITORY.git
   ```

7. Delete the bare cloned file used to create a new remote repository.
   ```
   cd ..                                       # Go back one file location
   rm -rf Thomas-Lumley-Workshops.git          # Delete the bare clone
   ```
8. Proceed with cloning the newly copied repository.

### Cloning the Copied Repository

Now that you have copied this repository into your own GitHub, you are ready to proceed with a standard clone to your local device.
  
1. Open Terminal.

2. Navigate to the file location you want to store the repository copy.
   ```
   cd "/file_location/"
   ```
3. Clone the newly created GitHub repository.
   ```
   # using SSH
   git clone git@github.com:EXAMPLE-USER/NEW-REPOSITORY.git

   # or using HTTPS
   git clone https://github.com/EXAMPLE-USER/NEW-REPOSITORY.git
   ```

4. **OPTIONAL:** You can reset the repository history, which will clear the previous commits, by running the following block of code (Source: [StackExchange by Zeelot](https://stackoverflow.com/questions/9683279/make-the-current-commit-the-only-initial-commit-in-a-git-repository)).
    ```
    git checkout --orphan tempBranch         # Create a temporary branch
    git add -A                               # Add all files and commit them
    git commit -m "Reset the repo"
    git branch -D main                       # Deletes the main branch
    git branch -m main                       # Rename the current branch to main
    git push -f origin main                  # Force push main branch to GitHub
    git gc --aggressive --prune=all          # Remove the old files
    ```

## About Professor Thomas Lumley

[Thomas Lumley](https://profiles.auckland.ac.nz/t-lumley) is a Professor in the Department of Statistics at the University of Auckland. His research interests are in statistical methodology and data analysis, with a focus on areas such as epidemiology, bioinformatics, and complex surveys. He has a particular interest in developing statistical models for health data and in improving the use of statistical methods for public health. Lumley has contributed significantly to statistical software development and is known for his work in statistical computing. He has also been involved in teaching and mentoring students in advanced statistical techniques. His work bridges the gap between theory and practical applications in the analysis of complex datasets.
